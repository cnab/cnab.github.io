# API Reference <a name="API Reference" id="api-reference"></a>


## Structs <a name="Structs" id="Structs"></a>

### BarcodeParams <a name="BarcodeParams" id="@cnab/core.BarcodeParams"></a>

Parameters to compose a FEBRABAN cobrança barcode (44 digits).

#### Initializer <a name="Initializer" id="@cnab/core.BarcodeParams.Initializer"></a>

```typescript
import { BarcodeParams } from '@cnab/core'

const barcodeParams: BarcodeParams = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BarcodeParams.property.amountCents">amountCents</a></code> | <code>string</code> | Amount in cents, digits only, up to 10 digits (zero-padded to 10). |
| <code><a href="#@cnab/core.BarcodeParams.property.bankCode">bankCode</a></code> | <code>string</code> | Bank code, exactly 3 digits (e.g. `104`, `341`). |
| <code><a href="#@cnab/core.BarcodeParams.property.currencyCode">currencyCode</a></code> | <code>string</code> | Currency code, exactly 1 digit (`9` = Real). |
| <code><a href="#@cnab/core.BarcodeParams.property.dueDateIso">dueDateIso</a></code> | <code>string</code> | Due date as ISO `YYYY-MM-DD`; |
| <code><a href="#@cnab/core.BarcodeParams.property.freeField">freeField</a></code> | <code>string</code> | Bank-specific free field (campo livre), exactly 25 digits. |

---

##### `amountCents`<sup>Required</sup> <a name="amountCents" id="@cnab/core.BarcodeParams.property.amountCents"></a>

```typescript
public readonly amountCents: string;
```

- *Type:* string

Amount in cents, digits only, up to 10 digits (zero-padded to 10).

---

##### `bankCode`<sup>Required</sup> <a name="bankCode" id="@cnab/core.BarcodeParams.property.bankCode"></a>

```typescript
public readonly bankCode: string;
```

- *Type:* string

Bank code, exactly 3 digits (e.g. `104`, `341`).

---

##### `currencyCode`<sup>Required</sup> <a name="currencyCode" id="@cnab/core.BarcodeParams.property.currencyCode"></a>

```typescript
public readonly currencyCode: string;
```

- *Type:* string

Currency code, exactly 1 digit (`9` = Real).

---

##### `dueDateIso`<sup>Required</sup> <a name="dueDateIso" id="@cnab/core.BarcodeParams.property.dueDateIso"></a>

```typescript
public readonly dueDateIso: string;
```

- *Type:* string

Due date as ISO `YYYY-MM-DD`;

encoded as the 4-digit fator de vencimento.

---

##### `freeField`<sup>Required</sup> <a name="freeField" id="@cnab/core.BarcodeParams.property.freeField"></a>

```typescript
public readonly freeField: string;
```

- *Type:* string

Bank-specific free field (campo livre), exactly 25 digits.

---

### BrCodeFields <a name="BrCodeFields" id="@cnab/core.BrCodeFields"></a>

Decoded result of {@link BrCode.decode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeFields.Initializer"></a>

```typescript
import { BrCodeFields } from '@cnab/core'

const brCodeFields: BrCodeFields = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeFields.property.amount">amount</a></code> | <code>string</code> | Empty string when the payload carries no amount. |
| <code><a href="#@cnab/core.BrCodeFields.property.crc">crc</a></code> | <code>string</code> | The 4 hex characters found in tag 63. |
| <code><a href="#@cnab/core.BrCodeFields.property.crcValid">crcValid</a></code> | <code>boolean</code> | Whether the payload's own CRC matches a recomputation. |
| <code><a href="#@cnab/core.BrCodeFields.property.description">description</a></code> | <code>string</code> | Empty string when tag 26 carries no description. |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantCity">merchantCity</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantName">merchantName</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.pixKey">pixKey</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.txid">txid</a></code> | <code>string</code> | *No description.* |

---

##### `amount`<sup>Required</sup> <a name="amount" id="@cnab/core.BrCodeFields.property.amount"></a>

```typescript
public readonly amount: string;
```

- *Type:* string

Empty string when the payload carries no amount.

---

##### `crc`<sup>Required</sup> <a name="crc" id="@cnab/core.BrCodeFields.property.crc"></a>

```typescript
public readonly crc: string;
```

- *Type:* string

The 4 hex characters found in tag 63.

---

##### `crcValid`<sup>Required</sup> <a name="crcValid" id="@cnab/core.BrCodeFields.property.crcValid"></a>

```typescript
public readonly crcValid: boolean;
```

- *Type:* boolean

Whether the payload's own CRC matches a recomputation.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.BrCodeFields.property.description"></a>

```typescript
public readonly description: string;
```

- *Type:* string

Empty string when tag 26 carries no description.

---

##### `merchantCity`<sup>Required</sup> <a name="merchantCity" id="@cnab/core.BrCodeFields.property.merchantCity"></a>

```typescript
public readonly merchantCity: string;
```

- *Type:* string

---

##### `merchantName`<sup>Required</sup> <a name="merchantName" id="@cnab/core.BrCodeFields.property.merchantName"></a>

```typescript
public readonly merchantName: string;
```

- *Type:* string

---

##### `pixKey`<sup>Required</sup> <a name="pixKey" id="@cnab/core.BrCodeFields.property.pixKey"></a>

```typescript
public readonly pixKey: string;
```

- *Type:* string

---

##### `txid`<sup>Required</sup> <a name="txid" id="@cnab/core.BrCodeFields.property.txid"></a>

```typescript
public readonly txid: string;
```

- *Type:* string

---

### BrCodeParams <a name="BrCodeParams" id="@cnab/core.BrCodeParams"></a>

Inputs for {@link BrCode.encode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeParams.Initializer"></a>

```typescript
import { BrCodeParams } from '@cnab/core'

const brCodeParams: BrCodeParams = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantCity">merchantCity</a></code> | <code>string</code> | Beneficiary city. |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantName">merchantName</a></code> | <code>string</code> | Beneficiary name. |
| <code><a href="#@cnab/core.BrCodeParams.property.pixKey">pixKey</a></code> | <code>string</code> | PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key. |
| <code><a href="#@cnab/core.BrCodeParams.property.amount">amount</a></code> | <code>string</code> | Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose. |
| <code><a href="#@cnab/core.BrCodeParams.property.description">description</a></code> | <code>string</code> | Optional free-text description carried inside tag 26. |
| <code><a href="#@cnab/core.BrCodeParams.property.singleUse">singleUse</a></code> | <code>boolean</code> | `true` marks the code single-use (initiation method `12`). |
| <code><a href="#@cnab/core.BrCodeParams.property.txid">txid</a></code> | <code>string</code> | Transaction id. |

---

##### `merchantCity`<sup>Required</sup> <a name="merchantCity" id="@cnab/core.BrCodeParams.property.merchantCity"></a>

```typescript
public readonly merchantCity: string;
```

- *Type:* string

Beneficiary city.

Truncated to 15 characters after sanitising.

---

##### `merchantName`<sup>Required</sup> <a name="merchantName" id="@cnab/core.BrCodeParams.property.merchantName"></a>

```typescript
public readonly merchantName: string;
```

- *Type:* string

Beneficiary name.

Truncated to 25 characters after sanitising.

---

##### `pixKey`<sup>Required</sup> <a name="pixKey" id="@cnab/core.BrCodeParams.property.pixKey"></a>

```typescript
public readonly pixKey: string;
```

- *Type:* string

PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key.

---

##### `amount`<sup>Optional</sup> <a name="amount" id="@cnab/core.BrCodeParams.property.amount"></a>

```typescript
public readonly amount: string;
```

- *Type:* string

Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose.

---

##### `description`<sup>Optional</sup> <a name="description" id="@cnab/core.BrCodeParams.property.description"></a>

```typescript
public readonly description: string;
```

- *Type:* string

Optional free-text description carried inside tag 26.

---

##### `singleUse`<sup>Optional</sup> <a name="singleUse" id="@cnab/core.BrCodeParams.property.singleUse"></a>

```typescript
public readonly singleUse: boolean;
```

- *Type:* boolean

`true` marks the code single-use (initiation method `12`).

Reusable codes
omit the tag entirely, which is what the BACEN static examples do.

---

##### `txid`<sup>Optional</sup> <a name="txid" id="@cnab/core.BrCodeParams.property.txid"></a>

```typescript
public readonly txid: string;
```

- *Type:* string

Transaction id.

Defaults to `"***"`, which means "not specified".
Alphanumeric, at most 25 characters.

---

### DetectedScope <a name="DetectedScope" id="@cnab/core.DetectedScope"></a>

The scope of a CNAB file inferred from its content (see `CnabFile.detectScope`).

#### Initializer <a name="Initializer" id="@cnab/core.DetectedScope.Initializer"></a>

```typescript
import { DetectedScope } from '@cnab/core'

const detectedScope: DetectedScope = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.DetectedScope.property.bank">bank</a></code> | <code>string</code> | Detected bank code, e.g. `104`. |
| <code><a href="#@cnab/core.DetectedScope.property.direction">direction</a></code> | <code>string</code> | Detected direction, `remessa` or `retorno`. |
| <code><a href="#@cnab/core.DetectedScope.property.layout">layout</a></code> | <code>string</code> | Detected layout family, `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.DetectedScope.property.variant">variant</a></code> | <code>string</code> | Detected variant, e.g. `sigcb` (empty when the bank has none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.DetectedScope.property.bank"></a>

```typescript
public readonly bank: string;
```

- *Type:* string

Detected bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.DetectedScope.property.direction"></a>

```typescript
public readonly direction: string;
```

- *Type:* string

Detected direction, `remessa` or `retorno`.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.DetectedScope.property.layout"></a>

```typescript
public readonly layout: string;
```

- *Type:* string

Detected layout family, `cnab240` or `cnab400`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.DetectedScope.property.variant"></a>

```typescript
public readonly variant: string;
```

- *Type:* string

Detected variant, e.g. `sigcb` (empty when the bank has none).

---

### FieldSpec <a name="FieldSpec" id="@cnab/core.FieldSpec"></a>

Specification of a single positioned field within a record.

#### Initializer <a name="Initializer" id="@cnab/core.FieldSpec.Initializer"></a>

```typescript
import { FieldSpec } from '@cnab/core'

const fieldSpec: FieldSpec = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.FieldSpec.property.dateFormat">dateFormat</a></code> | <code>string</code> | Language-neutral date format token (empty when not a date field). |
| <code><a href="#@cnab/core.FieldSpec.property.decimals">decimals</a></code> | <code>number</code> | Number of implied decimal places (0 when not a decimal field). |
| <code><a href="#@cnab/core.FieldSpec.property.defaultValue">defaultValue</a></code> | <code>string</code> | Default value applied by `build` when no value is supplied. |
| <code><a href="#@cnab/core.FieldSpec.property.description">description</a></code> | <code>string</code> | Short human description. |
| <code><a href="#@cnab/core.FieldSpec.property.end">end</a></code> | <code>number</code> | 1-based end position, inclusive. |
| <code><a href="#@cnab/core.FieldSpec.property.fieldType">fieldType</a></code> | <code><a href="#@cnab/core.FieldType">FieldType</a></code> | Field type / padding behaviour. |
| <code><a href="#@cnab/core.FieldSpec.property.name">name</a></code> | <code>string</code> | Canonical field name (the key used by `parse`/`build`). |
| <code><a href="#@cnab/core.FieldSpec.property.start">start</a></code> | <code>number</code> | 1-based start position, inclusive. |

---

##### `dateFormat`<sup>Required</sup> <a name="dateFormat" id="@cnab/core.FieldSpec.property.dateFormat"></a>

```typescript
public readonly dateFormat: string;
```

- *Type:* string

Language-neutral date format token (empty when not a date field).

---

##### `decimals`<sup>Required</sup> <a name="decimals" id="@cnab/core.FieldSpec.property.decimals"></a>

```typescript
public readonly decimals: number;
```

- *Type:* number

Number of implied decimal places (0 when not a decimal field).

---

##### `defaultValue`<sup>Required</sup> <a name="defaultValue" id="@cnab/core.FieldSpec.property.defaultValue"></a>

```typescript
public readonly defaultValue: string;
```

- *Type:* string

Default value applied by `build` when no value is supplied.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.FieldSpec.property.description"></a>

```typescript
public readonly description: string;
```

- *Type:* string

Short human description.

---

##### `end`<sup>Required</sup> <a name="end" id="@cnab/core.FieldSpec.property.end"></a>

```typescript
public readonly end: number;
```

- *Type:* number

1-based end position, inclusive.

---

##### `fieldType`<sup>Required</sup> <a name="fieldType" id="@cnab/core.FieldSpec.property.fieldType"></a>

```typescript
public readonly fieldType: FieldType;
```

- *Type:* <a href="#@cnab/core.FieldType">FieldType</a>

Field type / padding behaviour.

---

##### `name`<sup>Required</sup> <a name="name" id="@cnab/core.FieldSpec.property.name"></a>

```typescript
public readonly name: string;
```

- *Type:* string

Canonical field name (the key used by `parse`/`build`).

---

##### `start`<sup>Required</sup> <a name="start" id="@cnab/core.FieldSpec.property.start"></a>

```typescript
public readonly start: number;
```

- *Type:* number

1-based start position, inclusive.

---

### LineOptions <a name="LineOptions" id="@cnab/core.LineOptions"></a>

Opt-out knobs for the **lenient** line-building behaviour of `CnabRecord.toLineWithOptions`.

`toLine` is strict: a value that does not fit its field, or that is not a
digit string on a numeric field, raises an error instead of being silently
rewritten. Both flags below restore the legacy lenient behaviour, which
**silently changes the data written to the file** — for a bank file that is
financial corruption that `validate` cannot detect afterwards. Only set them
when you knowingly accept that.

#### Initializer <a name="Initializer" id="@cnab/core.LineOptions.Initializer"></a>

```typescript
import { LineOptions } from '@cnab/core'

const lineOptions: LineOptions = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.LineOptions.property.stripNonDigits">stripNonDigits</a></code> | <code>boolean</code> | When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input. |
| <code><a href="#@cnab/core.LineOptions.property.truncateOversized">truncateOversized</a></code> | <code>boolean</code> | When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`). |

---

##### `stripNonDigits`<sup>Required</sup> <a name="stripNonDigits" id="@cnab/core.LineOptions.property.stripNonDigits"></a>

```typescript
public readonly stripNonDigits: boolean;
```

- *Type:* boolean

When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input.

---

##### `truncateOversized`<sup>Required</sup> <a name="truncateOversized" id="@cnab/core.LineOptions.property.truncateOversized"></a>

```typescript
public readonly truncateOversized: boolean;
```

- *Type:* boolean

When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`).

---

### ParsedLine <a name="ParsedLine" id="@cnab/core.ParsedLine"></a>

One parsed line of a whole CNAB file.

#### Initializer <a name="Initializer" id="@cnab/core.ParsedLine.Initializer"></a>

```typescript
import { ParsedLine } from '@cnab/core'

const parsedLine: ParsedLine = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ParsedLine.property.fields">fields</a></code> | <code>{[ key: string ]: string}</code> | Parsed field values (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.recordKey">recordKey</a></code> | <code>string</code> | Detected record key (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.segment">segment</a></code> | <code>string</code> | The segment code for CNAB240 detail lines (empty otherwise). |
| <code><a href="#@cnab/core.ParsedLine.property.tipo">tipo</a></code> | <code>string</code> | The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1). |

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.ParsedLine.property.fields"></a>

```typescript
public readonly fields: {[ key: string ]: string};
```

- *Type:* {[ key: string ]: string}

Parsed field values (empty when the line could not be classified).

---

##### `recordKey`<sup>Required</sup> <a name="recordKey" id="@cnab/core.ParsedLine.property.recordKey"></a>

```typescript
public readonly recordKey: string;
```

- *Type:* string

Detected record key (empty when the line could not be classified).

---

##### `segment`<sup>Required</sup> <a name="segment" id="@cnab/core.ParsedLine.property.segment"></a>

```typescript
public readonly segment: string;
```

- *Type:* string

The segment code for CNAB240 detail lines (empty otherwise).

---

##### `tipo`<sup>Required</sup> <a name="tipo" id="@cnab/core.ParsedLine.property.tipo"></a>

```typescript
public readonly tipo: string;
```

- *Type:* string

The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1).

---

### RecordSpec <a name="RecordSpec" id="@cnab/core.RecordSpec"></a>

Specification of a whole record (one full 240/400 line).

#### Initializer <a name="Initializer" id="@cnab/core.RecordSpec.Initializer"></a>

```typescript
import { RecordSpec } from '@cnab/core'

const recordSpec: RecordSpec = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.RecordSpec.property.bank">bank</a></code> | <code>string</code> | Bank code, e.g. `104`. |
| <code><a href="#@cnab/core.RecordSpec.property.direction">direction</a></code> | <code>string</code> | Optional direction, e.g. `remessa`/`retorno` (empty when none). |
| <code><a href="#@cnab/core.RecordSpec.property.fields">fields</a></code> | <code><a href="#@cnab/core.FieldSpec">FieldSpec</a>[]</code> | All fields, ordered by position. |
| <code><a href="#@cnab/core.RecordSpec.property.layout">layout</a></code> | <code>string</code> | Layout family, e.g. `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.RecordSpec.property.lineLength">lineLength</a></code> | <code>number</code> | Total line length (240 or 400). |
| <code><a href="#@cnab/core.RecordSpec.property.record">record</a></code> | <code>string</code> | Record name, e.g. `header_arquivo`. |
| <code><a href="#@cnab/core.RecordSpec.property.variant">variant</a></code> | <code>string</code> | Optional variant, e.g. `sigcb` (empty when none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.RecordSpec.property.bank"></a>

```typescript
public readonly bank: string;
```

- *Type:* string

Bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.RecordSpec.property.direction"></a>

```typescript
public readonly direction: string;
```

- *Type:* string

Optional direction, e.g. `remessa`/`retorno` (empty when none).

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.RecordSpec.property.fields"></a>

```typescript
public readonly fields: FieldSpec[];
```

- *Type:* <a href="#@cnab/core.FieldSpec">FieldSpec</a>[]

All fields, ordered by position.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.RecordSpec.property.layout"></a>

```typescript
public readonly layout: string;
```

- *Type:* string

Layout family, e.g. `cnab240` or `cnab400`.

---

##### `lineLength`<sup>Required</sup> <a name="lineLength" id="@cnab/core.RecordSpec.property.lineLength"></a>

```typescript
public readonly lineLength: number;
```

- *Type:* number

Total line length (240 or 400).

---

##### `record`<sup>Required</sup> <a name="record" id="@cnab/core.RecordSpec.property.record"></a>

```typescript
public readonly record: string;
```

- *Type:* string

Record name, e.g. `header_arquivo`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.RecordSpec.property.variant"></a>

```typescript
public readonly variant: string;
```

- *Type:* string

Optional variant, e.g. `sigcb` (empty when none).

---

### ValidationResult <a name="ValidationResult" id="@cnab/core.ValidationResult"></a>

Outcome of validating a line against a record spec.

#### Initializer <a name="Initializer" id="@cnab/core.ValidationResult.Initializer"></a>

```typescript
import { ValidationResult } from '@cnab/core'

const validationResult: ValidationResult = { ... }
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ValidationResult.property.errors">errors</a></code> | <code>string[]</code> | Human-readable problems (empty when valid). |
| <code><a href="#@cnab/core.ValidationResult.property.valid">valid</a></code> | <code>boolean</code> | True when no problems were found. |

---

##### `errors`<sup>Required</sup> <a name="errors" id="@cnab/core.ValidationResult.property.errors"></a>

```typescript
public readonly errors: string[];
```

- *Type:* string[]

Human-readable problems (empty when valid).

---

##### `valid`<sup>Required</sup> <a name="valid" id="@cnab/core.ValidationResult.property.valid"></a>

```typescript
public readonly valid: boolean;
```

- *Type:* boolean

True when no problems were found.

---

## Classes <a name="Classes" id="Classes"></a>

### Boleto <a name="Boleto" id="@cnab/core.Boleto"></a>

FEBRABAN cobrança barcode (44 digits) and linha digitável (47 digits) helpers.

Barcode layout (1-based positions):
- 1-3: bank code
- 4: currency code (`9`)
- 5: general check digit (DAC, `Modulo.mod11Boleto` over the other 43)
- 6-9: fator de vencimento (due-date factor)
- 10-19: amount in cents, zero-padded to 10
- 20-44: campo livre (25 bank-specific digits)


#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.Boleto.barcode">barcode</a></code> | Compose the 44-digit FEBRABAN cobrança barcode. |
| <code><a href="#@cnab/core.Boleto.barcodeCheckDigit">barcodeCheckDigit</a></code> | Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44). |
| <code><a href="#@cnab/core.Boleto.fatorVencimento">fatorVencimento</a></code> | Compute the 4-digit *fator de vencimento* for a due date. |
| <code><a href="#@cnab/core.Boleto.isValidBarcode">isValidBarcode</a></code> | Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit. |
| <code><a href="#@cnab/core.Boleto.linhaDigitavel">linhaDigitavel</a></code> | Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces). |
| <code><a href="#@cnab/core.Boleto.linhaDigitavelFormatted">linhaDigitavelFormatted</a></code> | The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`. |
| <code><a href="#@cnab/core.Boleto.parseLinhaDigitavel">parseLinhaDigitavel</a></code> | Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode. |

---

##### `barcode` <a name="barcode" id="@cnab/core.Boleto.barcode"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.barcode(options: BarcodeParams)
```

Compose the 44-digit FEBRABAN cobrança barcode.

The general check digit (position 5) is computed with
`Modulo.mod11Boleto` over the other 43 digits.

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.Boleto.barcode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BarcodeParams">BarcodeParams</a>

bank, currency, due date, amount and campo livre.

---

##### `barcodeCheckDigit` <a name="barcodeCheckDigit" id="@cnab/core.Boleto.barcodeCheckDigit"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.barcodeCheckDigit(barcode: string)
```

Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44).

Does not require the stored
DV (position 5) to be correct.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.barcodeCheckDigit.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `fatorVencimento` <a name="fatorVencimento" id="@cnab/core.Boleto.fatorVencimento"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.fatorVencimento(dateIso: string)
```

Compute the 4-digit *fator de vencimento* for a due date.

The factor counts days since the FEBRABAN base date 1997-10-07
(1997-10-08 → `0001`). After the counter reached 9999 on 2025-02-21,
FEBRABAN restarted it at 1000 on 2025-02-22; factors keep cycling in
the 1000-9999 window: `factor > 9999 → ((factor - 1000) % 9000) + 1000`.

All arithmetic is done in UTC to avoid timezone off-by-one errors.

###### `dateIso`<sup>Required</sup> <a name="dateIso" id="@cnab/core.Boleto.fatorVencimento.parameter.dateIso"></a>

- *Type:* string

due date as ISO `YYYY-MM-DD`.

---

##### `isValidBarcode` <a name="isValidBarcode" id="@cnab/core.Boleto.isValidBarcode"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.isValidBarcode(barcode: string)
```

Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.isValidBarcode.parameter.barcode"></a>

- *Type:* string

---

##### `linhaDigitavel` <a name="linhaDigitavel" id="@cnab/core.Boleto.linhaDigitavel"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.linhaDigitavel(barcode: string)
```

Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces).

Field layout (barcode positions are 1-based):
- field 1 (10 digits): barcode 1-4 + 20-24 + módulo-10 DV
- field 2 (11 digits): barcode 25-34 + módulo-10 DV
- field 3 (11 digits): barcode 35-44 + módulo-10 DV
- field 4 (1 digit): the barcode general DV (position 5)
- field 5 (14 digits): barcode 6-19 (fator de vencimento + amount)

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavel.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `linhaDigitavelFormatted` <a name="linhaDigitavelFormatted" id="@cnab/core.Boleto.linhaDigitavelFormatted"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.linhaDigitavelFormatted(barcode: string)
```

The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavelFormatted.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `parseLinhaDigitavel` <a name="parseLinhaDigitavel" id="@cnab/core.Boleto.parseLinhaDigitavel"></a>

```typescript
import { Boleto } from '@cnab/core'

Boleto.parseLinhaDigitavel(linha: string)
```

Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode.

Validates the three módulo-10 field DVs and the reconstructed barcode's
general módulo-11 DV; throws with a clear message on any mismatch.

###### `linha`<sup>Required</sup> <a name="linha" id="@cnab/core.Boleto.parseLinhaDigitavel.parameter.linha"></a>

- *Type:* string

the linha digitável, plain or formatted.

---



### BrCode <a name="BrCode" id="@cnab/core.BrCode"></a>

Build, parse and verify the PIX BR Code payload.

```ts
const payload = BrCode.encode({
  pixKey: 'fulano@example.com',
  merchantName: 'FULANO DE TAL',
  merchantCity: 'BRASILIA',
  amount: '10.00',
});
BrCode.isValid(payload);      // true
BrCode.decode(payload).pixKey // 'fulano@example.com'
```

#### Initializers <a name="Initializers" id="@cnab/core.BrCode.Initializer"></a>

```typescript
import { BrCode } from '@cnab/core'

new BrCode()
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |

---


#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.BrCode.crc16">crc16</a></code> | CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded. |
| <code><a href="#@cnab/core.BrCode.decode">decode</a></code> | Decode a BR Code payload into its fields, reporting CRC validity. |
| <code><a href="#@cnab/core.BrCode.encode">encode</a></code> | Build a BR Code payload, CRC included. |
| <code><a href="#@cnab/core.BrCode.isValid">isValid</a></code> | `true` when the payload's trailing CRC matches a recomputation over everything before it. |

---

##### `crc16` <a name="crc16" id="@cnab/core.BrCode.crc16"></a>

```typescript
import { BrCode } from '@cnab/core'

BrCode.crc16(payload: string)
```

CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded.

Canonical check: `crc16("123456789") === "29B1"`.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.crc16.parameter.payload"></a>

- *Type:* string

---

##### `decode` <a name="decode" id="@cnab/core.BrCode.decode"></a>

```typescript
import { BrCode } from '@cnab/core'

BrCode.decode(payload: string)
```

Decode a BR Code payload into its fields, reporting CRC validity.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.decode.parameter.payload"></a>

- *Type:* string

---

##### `encode` <a name="encode" id="@cnab/core.BrCode.encode"></a>

```typescript
import { BrCode } from '@cnab/core'

BrCode.encode(options: BrCodeParams)
```

Build a BR Code payload, CRC included.

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.BrCode.encode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BrCodeParams">BrCodeParams</a>

---

##### `isValid` <a name="isValid" id="@cnab/core.BrCode.isValid"></a>

```typescript
import { BrCode } from '@cnab/core'

BrCode.isValid(payload: string)
```

`true` when the payload's trailing CRC matches a recomputation over everything before it.

Returns `false` rather than throwing for anything
that is not a well-formed payload — callers use this as a predicate.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.isValid.parameter.payload"></a>

- *Type:* string

---



### CnabFile <a name="CnabFile" id="@cnab/core.CnabFile"></a>

Parses a whole CNAB file (many lines of mixed record types) by detecting each line's record type from its discriminator positions and dispatching to the matching record spec.

Scope it to one bank/variant/direction with `forBank`.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.parse">parse</a></code> | Parse a whole file's content into one `ParsedLine` per non-empty line. |
| <code><a href="#@cnab/core.CnabFile.parseToJson">parseToJson</a></code> | Parse file content and return the result as a **single JSON string**: an array of objects shaped exactly like `ParsedLine` — `[{"recordKey":…,"tipo":…,"segment":…,"fields":{…}}]`, camelCase keys, the same values `parse` produces, in the same order. |

---

##### `parse` <a name="parse" id="@cnab/core.CnabFile.parse"></a>

```typescript
public parse(content: string): ParsedLine[]
```

Parse a whole file's content into one `ParsedLine` per non-empty line.

A leading UTF-8 BOM (U+FEFF) is ignored, and both LF and CRLF line endings
are accepted.

**This is the Node path.** Everywhere else, each returned `ParsedLine` and
its ~40-key field map is marshalled across the jsii kernel individually, at
a cost of milliseconds *per line* — a six-figure-line retorno takes
minutes. Use `parseToJson` in Python/Java/.NET. See "Large files" in the
package README, and ADR 0010, for the measurements.

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.parse.parameter.content"></a>

- *Type:* string

---

##### `parseToJson` <a name="parseToJson" id="@cnab/core.CnabFile.parseToJson"></a>

```typescript
public parseToJson(content: string): string
```

Parse file content and return the result as a **single JSON string**: an array of objects shaped exactly like `ParsedLine` — `[{"recordKey":…,"tipo":…,"segment":…,"fields":{…}}]`, camelCase keys, the same values `parse` produces, in the same order.

This exists because `parse` does not scale outside Node. jsii marshals
every returned `ParsedLine` and its field map across the kernel
individually, so 200,000 lines is 200,000 crossings and Python/Java/.NET
spend *minutes* rebuilding objects. This is **one** crossing of one string,
decoded by the host's own native, in-process JSON parser.

```python
import json
rows = json.loads(cnab_file.parse_to_json(content))
rows[0]["fields"]["nosso_numero"]
```

**Feed it a few thousand lines at a time.** The jsii boundary degrades
sharply on large strings *in both directions*, so one call carrying a whole
200,000-line file is several times slower than twenty calls carrying
10,000 lines each — and it also forces both runtimes to hold the entire
result at once. Because classification is per line and carries no state,
splitting the file into chunks of whole lines is exactly equivalent to one
call. ADR 0010 has the numbers and a worked example per language.

Line handling is identical to `parse`: a leading UTF-8 BOM is ignored, both
LF and CRLF are accepted, empty lines are skipped, and an unclassifiable
line yields an empty `recordKey` and an empty `fields` object.

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.parseToJson.parameter.content"></a>

- *Type:* string

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.detect">detect</a></code> | Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it. |
| <code><a href="#@cnab/core.CnabFile.detectScope">detectScope</a></code> | Infer a file's scope (layout / bank / variant / direction) from its first line (the header_arquivo):. |
| <code><a href="#@cnab/core.CnabFile.forBank">forBank</a></code> | Build a file parser scoped to the records of one bank (and optional variant / direction). |
| <code><a href="#@cnab/core.CnabFile.forBankBundled">forBankBundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `detect` <a name="detect" id="@cnab/core.CnabFile.detect"></a>

```typescript
import { CnabFile } from '@cnab/core'

CnabFile.detect(specJson: string, content: string)
```

Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it.

Throws the same errors as `detectScope`
when the content cannot be identified.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.detect.parameter.specJson"></a>

- *Type:* string

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detect.parameter.content"></a>

- *Type:* string

---

##### `detectScope` <a name="detectScope" id="@cnab/core.CnabFile.detectScope"></a>

```typescript
import { CnabFile } from '@cnab/core'

CnabFile.detectScope(specJson: string, content: string)
```

Infer a file's scope (layout / bank / variant / direction) from its first line (the header_arquivo):.

**layout** from the line length: 240 -> `cnab240`, 400 -> `cnab400`;
- **bank** from `codigo_banco`: positions 1-3 (CNAB240) or 77-79 (CNAB400);
- **direction** from the CNAB240 header position 143 (`1` remessa /
  `2` retorno), or for CNAB400 from header position 2 (`1` remessa /
  `2` retorno) corroborated by the `REMESSA`/`RETORNO` literal at 3-9;
- **variant** by trying every candidate variant of the detected bank and
  keeping the one whose records classify the most lines of the file.

Throws an `Error` with a descriptive message when the content cannot be
detected: empty input, a first line that is not 240/400 characters long, a
position 1-3 / 77-79 value that is not a three-digit bank code, an
unrecognizable direction indicator, or a bank with no matching records in
the spec.

A leading UTF-8 BOM (U+FEFF) is ignored, and both LF and CRLF line endings
are accepted.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.detectScope.parameter.specJson"></a>

- *Type:* string

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detectScope.parameter.content"></a>

- *Type:* string

---

##### `forBank` <a name="forBank" id="@cnab/core.CnabFile.forBank"></a>

```typescript
import { CnabFile } from '@cnab/core'

CnabFile.forBank(specJson: string, layout: string, bank: string, variant: string, direction: string)
```

Build a file parser scoped to the records of one bank (and optional variant / direction).

`variant` and `direction` may be empty strings.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.forBank.parameter.specJson"></a>

- *Type:* string

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBank.parameter.layout"></a>

- *Type:* string

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBank.parameter.bank"></a>

- *Type:* string

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBank.parameter.variant"></a>

- *Type:* string

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBank.parameter.direction"></a>

- *Type:* string

---

##### `forBankBundled` <a name="forBankBundled" id="@cnab/core.CnabFile.forBankBundled"></a>

```typescript
import { CnabFile } from '@cnab/core'

CnabFile.forBankBundled(layout: string, bank: string, variant: string, direction: string)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBankBundled.parameter.layout"></a>

- *Type:* string

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBankBundled.parameter.bank"></a>

- *Type:* string

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBankBundled.parameter.variant"></a>

- *Type:* string

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBankBundled.parameter.direction"></a>

- *Type:* string

---



### CnabFileBuilder <a name="CnabFileBuilder" id="@cnab/core.CnabFileBuilder"></a>

Builds a whole CNAB file (header + lotes/details + trailer), auto-computing the layout's control fields.

Terminal method is `toFileContent` (`build` is
a prohibited member name in jsii).

CNAB240 usage: `setHeader`, then one or more `startLote` / `addDetail`* /
`endLote` cycles, then `toFileContent`.
CNAB400 usage: `setHeader`, `addDetail`*, `toFileContent` (no lotes).

Every line is emitted through the **strict** `CnabRecord.toLine`: a value
that does not fit its field, or a non-digit value on a numeric field, aborts
`toFileContent` with an error naming the field instead of being silently
truncated or stripped. There is deliberately no lenient mode here — a whole
generated bank file must never contain quietly altered amounts. Callers that
need the legacy behaviour must build those lines themselves with
`CnabRecord.toLineWithOptions`.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFileBuilder.addDetail">addDetail</a></code> | Append a detail line. |
| <code><a href="#@cnab/core.CnabFileBuilder.endLote">endLote</a></code> | CNAB240 only: close the open lote with the given `trailer_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.startLote">startLote</a></code> | CNAB240 only: begin a new lote with the given `header_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.toFileContent">toFileContent</a></code> | Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline). |
| <code><a href="#@cnab/core.CnabFileBuilder.withHeader">withHeader</a></code> | Set the values for the `header_arquivo` record. |

---

##### `addDetail` <a name="addDetail" id="@cnab/core.CnabFileBuilder.addDetail"></a>

```typescript
public addDetail(recordName: string, values: {[ key: string ]: string}): void
```

Append a detail line.

`recordName` is the record's short name in scope,
e.g. `detalhe_segmento_p` (CNAB240) or `detalhe` (CNAB400). Throws when
the name is unknown in this scope or (CNAB240) when no lote is open.

###### `recordName`<sup>Required</sup> <a name="recordName" id="@cnab/core.CnabFileBuilder.addDetail.parameter.recordName"></a>

- *Type:* string

---

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.addDetail.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

##### `endLote` <a name="endLote" id="@cnab/core.CnabFileBuilder.endLote"></a>

```typescript
public endLote(trailerValues: {[ key: string ]: string}): void
```

CNAB240 only: close the open lote with the given `trailer_lote` values.

The lote's `qtde_registro_lote` (header_lote + details + trailer_lote) is
auto-computed unless supplied here.

###### `trailerValues`<sup>Required</sup> <a name="trailerValues" id="@cnab/core.CnabFileBuilder.endLote.parameter.trailerValues"></a>

- *Type:* {[ key: string ]: string}

---

##### `startLote` <a name="startLote" id="@cnab/core.CnabFileBuilder.startLote"></a>

```typescript
public startLote(headerValues: {[ key: string ]: string}): void
```

CNAB240 only: begin a new lote with the given `header_lote` values.

Throws for CNAB400 (which has no lotes) and when a lote is already open.

###### `headerValues`<sup>Required</sup> <a name="headerValues" id="@cnab/core.CnabFileBuilder.startLote.parameter.headerValues"></a>

- *Type:* {[ key: string ]: string}

---

##### `toFileContent` <a name="toFileContent" id="@cnab/core.CnabFileBuilder.toFileContent"></a>

```typescript
public toFileContent(trailerValues: {[ key: string ]: string}): string
```

Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline).

Control fields are auto-computed
per layout (see ADR 0007); user-supplied counter/total values win, pure
sequence counters are always builder-owned.

###### `trailerValues`<sup>Required</sup> <a name="trailerValues" id="@cnab/core.CnabFileBuilder.toFileContent.parameter.trailerValues"></a>

- *Type:* {[ key: string ]: string}

---

##### `withHeader` <a name="withHeader" id="@cnab/core.CnabFileBuilder.withHeader"></a>

```typescript
public withHeader(values: {[ key: string ]: string}): void
```

Set the values for the `header_arquivo` record.

(Named `withHeader`
rather than `setHeader` because jsii prohibits `setXxx` method names —
they conflict with Java property setters.)

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.withHeader.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFileBuilder.forBank">forBank</a></code> | Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings. |
| <code><a href="#@cnab/core.CnabFileBuilder.forBankBundled">forBankBundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `forBank` <a name="forBank" id="@cnab/core.CnabFileBuilder.forBank"></a>

```typescript
import { CnabFileBuilder } from '@cnab/core'

CnabFileBuilder.forBank(specJson: string, layout: string, bank: string, variant: string, direction: string)
```

Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFileBuilder.forBank.parameter.specJson"></a>

- *Type:* string

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBank.parameter.layout"></a>

- *Type:* string

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBank.parameter.bank"></a>

- *Type:* string

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBank.parameter.variant"></a>

- *Type:* string

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBank.parameter.direction"></a>

- *Type:* string

---

##### `forBankBundled` <a name="forBankBundled" id="@cnab/core.CnabFileBuilder.forBankBundled"></a>

```typescript
import { CnabFileBuilder } from '@cnab/core'

CnabFileBuilder.forBankBundled(layout: string, bank: string, variant: string, direction: string)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.layout"></a>

- *Type:* string

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.bank"></a>

- *Type:* string

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.variant"></a>

- *Type:* string

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.direction"></a>

- *Type:* string

---



### CnabRecord <a name="CnabRecord" id="@cnab/core.CnabRecord"></a>

A single CNAB record spec with operations to `parse`, `build` and `validate` one fixed-width line.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.getDateIso">getDateIso</a></code> | Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069; |
| <code><a href="#@cnab/core.CnabRecord.getDecimal">getDecimal</a></code> | Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged. |
| <code><a href="#@cnab/core.CnabRecord.parse">parse</a></code> | Parse a fixed-width line into a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.setDateIso">setDateIso</a></code> | Set the value of a date/time field from an ISO string, the inverse of `getDateIso`:. |
| <code><a href="#@cnab/core.CnabRecord.setDecimal">setDecimal</a></code> | Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`). |
| <code><a href="#@cnab/core.CnabRecord.toLine">toLine</a></code> | Build a fixed-width line from a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.toLineWithOptions">toLineWithOptions</a></code> | Same as `toLine`, but with explicit control over what happens to values that do not fit or are not digit strings (see `LineOptions`). |
| <code><a href="#@cnab/core.CnabRecord.validate">validate</a></code> | Validate a line against this record spec. |

---

##### `getDateIso` <a name="getDateIso" id="@cnab/core.CnabRecord.getDateIso"></a>

```typescript
public getDateIso(values: {[ key: string ]: string}, name: string): string
```

Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069;

see ADR 0006)
- `HHmmss`   -> `HH:mm:ss`

Returns `''` when the raw value is all zeros (CNAB's "unset" convention).
Throws when the field name is unknown, the field has no `dateFormat`, or
the stored value is not a digit string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDateIso.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDateIso.parameter.name"></a>

- *Type:* string

---

##### `getDecimal` <a name="getDecimal" id="@cnab/core.CnabRecord.getDecimal"></a>

```typescript
public getDecimal(values: {[ key: string ]: string}, name: string): string
```

Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged.

Numeric values cross the API boundary as decimal strings — never floats —
so they stay exact, jsii-safe and language-neutral (see ADR 0006).

Throws when the field name is unknown or the stored value is not a digit
string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDecimal.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDecimal.parameter.name"></a>

- *Type:* string

---

##### `parse` <a name="parse" id="@cnab/core.CnabRecord.parse"></a>

```typescript
public parse(line: string): {[ key: string ]: string}
```

Parse a fixed-width line into a map of field name -> value.

Values are
normalized (alpha right-trimmed, numerics stripped of left padding) so that
`toLine(parse(line))` reproduces a well-formed line.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.parse.parameter.line"></a>

- *Type:* string

---

##### `setDateIso` <a name="setDateIso" id="@cnab/core.CnabRecord.setDateIso"></a>

```typescript
public setDateIso(values: {[ key: string ]: string}, name: string, iso: string): {[ key: string ]: string}
```

Set the value of a date/time field from an ISO string, the inverse of `getDateIso`:.

`ddMMyyyy`: `"2026-07-15"` -> `"15072026"`
- `ddMMyy`:   `"2026-07-15"` -> `"150726"` (the year must fall in the
  1970-2069 pivot window documented on `getDateIso`, otherwise it could
  not be read back)
- `HHmmss`:   `"10:30:00"` -> `"103000"`

An empty string stores the all-zeros "unset" value.

Returns a **new map** with the field set; the input is not modified. See
`setDecimal` for why this cannot mutate — jsii marshals maps by value, so
the old `void` + mutate signature only ever worked in Node.

```ts
values = record.setDateIso(values, 'vencimento', '2026-03-15');
```

Throws when the field name is unknown, the field has no `dateFormat`, or
the input is malformed (wrong shape, month/day/time component out of range).

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDateIso.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDateIso.parameter.name"></a>

- *Type:* string

---

###### `iso`<sup>Required</sup> <a name="iso" id="@cnab/core.CnabRecord.setDateIso.parameter.iso"></a>

- *Type:* string

---

##### `setDecimal` <a name="setDecimal" id="@cnab/core.CnabRecord.setDecimal"></a>

```typescript
public setDecimal(values: {[ key: string ]: string}, name: string, decimalValue: string): {[ key: string ]: string}
```

Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`).

Returns a **new map** with the field set; the input is not modified. It
cannot mutate: jsii marshals maps **by value**, so a mutation performed
here would be invisible to a Python/Java/.NET caller. This method used to
return `void` and mutate, which worked only in Node and silently did
nothing everywhere else.

```ts
values = record.setDecimal(values, 'valor_titulo', '1500.00');
```

Throws when the field name is unknown, the value is not a well-formed
decimal string, or it carries more fraction digits than the field allows.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDecimal.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDecimal.parameter.name"></a>

- *Type:* string

---

###### `decimalValue`<sup>Required</sup> <a name="decimalValue" id="@cnab/core.CnabRecord.setDecimal.parameter.decimalValue"></a>

- *Type:* string

---

##### `toLine` <a name="toLine" id="@cnab/core.CnabRecord.toLine"></a>

```typescript
public toLine(values: {[ key: string ]: string}): string
```

Build a fixed-width line from a map of field name -> value.

Missing fields
fall back to their default value. (Named `toLine` rather than `build`
because `build` is a prohibited member name in jsii.)

This is the **strict** builder: it never silently rewrites a value.
It throws an `Error` naming the field, its positions and its width when

- an alphanumeric value is longer than its field;
- a numeric value has more significant digits than its field (redundant
  leading zeros are fine: `"00150000"` in a 6-wide field is `"150000"`,
  nothing is lost);
- a numeric value is not a digit string (`"1500.00"`, `"-10"`, `"R$ 10"`).
  CNAB numeric fields are **unsigned digit strings** with implied decimals;
  use `setDecimal` to write decimal input.

An empty value is always allowed and produces the field's blank/zero fill;
on a numeric field an all-blank value means the same thing (CNAB's "unset"
spelling) and is zero-filled. Values produced by `parse` always round-trip:
`toLine(parse(line)) === line` for a well-formed line.

Use `toLineWithOptions` to opt back into the legacy lenient behaviour.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.toLine.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

##### `toLineWithOptions` <a name="toLineWithOptions" id="@cnab/core.CnabRecord.toLineWithOptions"></a>

```typescript
public toLineWithOptions(values: {[ key: string ]: string}, options: LineOptions): string
```

Same as `toLine`, but with explicit control over what happens to values that do not fit or are not digit strings (see `LineOptions`).

`toLineWithOptions(values, { truncateOversized: true, stripNonDigits: true })`
reproduces the pre-strict (legacy) behaviour: oversized alphanumerics are
cut on the right, oversized numerics keep their rightmost digits, and
non-digit characters are deleted from numeric values. That behaviour
**silently alters amounts and identifiers**, so it exists only as a
deliberate opt-out for callers migrating legacy pipelines.

(A separate method rather than an optional argument or an overload:
jsii prohibits method overloads.)

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.values"></a>

- *Type:* {[ key: string ]: string}

---

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.options"></a>

- *Type:* <a href="#@cnab/core.LineOptions">LineOptions</a>

---

##### `validate` <a name="validate" id="@cnab/core.CnabRecord.validate"></a>

```typescript
public validate(line: string): ValidationResult
```

Validate a line against this record spec.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.validate.parameter.line"></a>

- *Type:* string

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.fromJson">fromJson</a></code> | Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`). |

---

##### `fromJson` <a name="fromJson" id="@cnab/core.CnabRecord.fromJson"></a>

```typescript
import { CnabRecord } from '@cnab/core'

CnabRecord.fromJson(json: string)
```

Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`).

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabRecord.fromJson.parameter.json"></a>

- *Type:* string

---

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.CnabRecord.property.spec">spec</a></code> | <code><a href="#@cnab/core.RecordSpec">RecordSpec</a></code> | The underlying record specification. |

---

##### `spec`<sup>Required</sup> <a name="spec" id="@cnab/core.CnabRecord.property.spec"></a>

```typescript
public readonly spec: RecordSpec;
```

- *Type:* <a href="#@cnab/core.RecordSpec">RecordSpec</a>

The underlying record specification.

---


### CnabSpec <a name="CnabSpec" id="@cnab/core.CnabSpec"></a>

A compiled spec: a collection of named records (whole `spec.json`).

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.codeTableKeys">codeTableKeys</a></code> | All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`. |
| <code><a href="#@cnab/core.CnabSpec.getCodeTable">getCodeTable</a></code> | Get a code table (code -> description map) by key. |
| <code><a href="#@cnab/core.CnabSpec.getRecord">getRecord</a></code> | Get a record by key. |
| <code><a href="#@cnab/core.CnabSpec.hasCodeTable">hasCodeTable</a></code> | Whether a code table with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.hasRecord">hasRecord</a></code> | Whether a record with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.lookupCode">lookupCode</a></code> | Look up a code's description in a table, or `''` when the code is unknown. |
| <code><a href="#@cnab/core.CnabSpec.recordKeys">recordKeys</a></code> | All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`. |

---

##### `codeTableKeys` <a name="codeTableKeys" id="@cnab/core.CnabSpec.codeTableKeys"></a>

```typescript
public codeTableKeys(): string[]
```

All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`.

##### `getCodeTable` <a name="getCodeTable" id="@cnab/core.CnabSpec.getCodeTable"></a>

```typescript
public getCodeTable(key: string): {[ key: string ]: string}
```

Get a code table (code -> description map) by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getCodeTable.parameter.key"></a>

- *Type:* string

---

##### `getRecord` <a name="getRecord" id="@cnab/core.CnabSpec.getRecord"></a>

```typescript
public getRecord(key: string): CnabRecord
```

Get a record by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getRecord.parameter.key"></a>

- *Type:* string

---

##### `hasCodeTable` <a name="hasCodeTable" id="@cnab/core.CnabSpec.hasCodeTable"></a>

```typescript
public hasCodeTable(key: string): boolean
```

Whether a code table with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasCodeTable.parameter.key"></a>

- *Type:* string

---

##### `hasRecord` <a name="hasRecord" id="@cnab/core.CnabSpec.hasRecord"></a>

```typescript
public hasRecord(key: string): boolean
```

Whether a record with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasRecord.parameter.key"></a>

- *Type:* string

---

##### `lookupCode` <a name="lookupCode" id="@cnab/core.CnabSpec.lookupCode"></a>

```typescript
public lookupCode(key: string, code: string): string
```

Look up a code's description in a table, or `''` when the code is unknown.

The code is normalized during lookup: tried as-is, then with leading zeros
stripped (legacy tables use unpadded keys like `"2"` while CNAB fields
carry `"02"`), then zero-padded to 2 digits.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.lookupCode.parameter.key"></a>

- *Type:* string

---

###### `code`<sup>Required</sup> <a name="code" id="@cnab/core.CnabSpec.lookupCode.parameter.code"></a>

- *Type:* string

---

##### `recordKeys` <a name="recordKeys" id="@cnab/core.CnabSpec.recordKeys"></a>

```typescript
public recordKeys(): string[]
```

All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`.

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.bundled">bundled</a></code> | The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve. |
| <code><a href="#@cnab/core.CnabSpec.bundledJson">bundledJson</a></code> | The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too. |
| <code><a href="#@cnab/core.CnabSpec.fromJson">fromJson</a></code> | Load from the compiled `spec.json` content. |

---

##### `bundled` <a name="bundled" id="@cnab/core.CnabSpec.bundled"></a>

```typescript
import { CnabSpec } from '@cnab/core'

CnabSpec.bundled()
```

The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve.

This is the entry point for every non-Node language: a Python / Java /
.NET consumer installs the engine and immediately has the full catalog,
every record and every code table.

##### `bundledJson` <a name="bundledJson" id="@cnab/core.CnabSpec.bundledJson"></a>

```typescript
import { CnabSpec } from '@cnab/core'

CnabSpec.bundledJson()
```

The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too.

##### `fromJson` <a name="fromJson" id="@cnab/core.CnabSpec.fromJson"></a>

```typescript
import { CnabSpec } from '@cnab/core'

CnabSpec.fromJson(json: string)
```

Load from the compiled `spec.json` content.

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabSpec.fromJson.parameter.json"></a>

- *Type:* string

---



### Modulo <a name="Modulo" id="@cnab/core.Modulo"></a>

Check-digit (dígito verificador, DV) algorithms used across CNAB and boleto layouts.

These are the generic building blocks: per-bank *nosso número* DV rules
vary by institution (each bank manual defines its own weights, ranges and
exception mapping) and are intentionally not implemented here — compose
them from `Modulo.mod10` / `Modulo.mod11` following the bank's manual.


#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.Modulo.mod10">mod10</a></code> | Módulo 10 (boleto / linha digitável field DV). |
| <code><a href="#@cnab/core.Modulo.mod11">mod11</a></code> | Generic CNAB módulo 11 (remessa/retorno field DVs). |
| <code><a href="#@cnab/core.Modulo.mod11Boleto">mod11Boleto</a></code> | FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5). |

---

##### `mod10` <a name="mod10" id="@cnab/core.Modulo.mod10"></a>

```typescript
import { Modulo } from '@cnab/core'

Modulo.mod10(digits: string)
```

Módulo 10 (boleto / linha digitável field DV).

Rule: weights 2 and 1 alternate right-to-left starting with 2. Each
digit is multiplied by its weight; when a product exceeds 9 its decimal
digits are summed (e.g. 12 → 1 + 2 = 3). The DV is the amount needed to
reach the next multiple of 10: `(10 - (sum % 10)) % 10`.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod10.parameter.digits"></a>

- *Type:* string

numeric string (one or more digits).

---

##### `mod11` <a name="mod11" id="@cnab/core.Modulo.mod11"></a>

```typescript
import { Modulo } from '@cnab/core'

Modulo.mod11(digits: string)
```

Generic CNAB módulo 11 (remessa/retorno field DVs).

Rule: weights 2, 3, ..., 9 cycle right-to-left. The DV is
`11 - (sum % 11)`; when that result is 0, 10 or 11 the DV is 0.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11.parameter.digits"></a>

- *Type:* string

numeric string (one or more digits).

---

##### `mod11Boleto` <a name="mod11Boleto" id="@cnab/core.Modulo.mod11Boleto"></a>

```typescript
import { Modulo } from '@cnab/core'

Modulo.mod11Boleto(digits: string)
```

FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5).

Rule: same weighting as `mod11` (weights 2..9 cycling right-to-left),
but the DV is `11 - (sum % 11)` mapped so that a result of 0, 1, 10 or
11 becomes 1 (the barcode DV can never be 0).

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11Boleto.parameter.digits"></a>

- *Type:* string

numeric string (one or more digits).

---




## Enums <a name="Enums" id="Enums"></a>

### FieldType <a name="FieldType" id="@cnab/core.FieldType"></a>

How a fixed-width field is typed and padded.

#### Members <a name="Members" id="Members"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.FieldType.NUM">NUM</a></code> | Numeric: right-aligned, zero-padded. |
| <code><a href="#@cnab/core.FieldType.ALPHA">ALPHA</a></code> | Alphanumeric text: left-aligned, space-padded. |
| <code><a href="#@cnab/core.FieldType.NUM_DECIMAL">NUM_DECIMAL</a></code> | Numeric with implied decimal places (the separator is not stored). |

---

##### `NUM` <a name="NUM" id="@cnab/core.FieldType.NUM"></a>

Numeric: right-aligned, zero-padded.

---


##### `ALPHA` <a name="ALPHA" id="@cnab/core.FieldType.ALPHA"></a>

Alphanumeric text: left-aligned, space-padded.

---


##### `NUM_DECIMAL` <a name="NUM_DECIMAL" id="@cnab/core.FieldType.NUM_DECIMAL"></a>

Numeric with implied decimal places (the separator is not stored).

---

