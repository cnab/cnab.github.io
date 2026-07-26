# API Reference <a name="API Reference" id="api-reference"></a>


## Structs <a name="Structs" id="Structs"></a>

### BarcodeParams <a name="BarcodeParams" id="@cnab/core.BarcodeParams"></a>

Parameters to compose a FEBRABAN cobrança barcode (44 digits).

#### Initializer <a name="Initializer" id="@cnab/core.BarcodeParams.Initializer"></a>

```csharp
using Cnab.Core;

new BarcodeParams {
    string AmountCents,
    string BankCode,
    string CurrencyCode,
    string DueDateIso,
    string FreeField
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BarcodeParams.property.amountCents">AmountCents</a></code> | <code>string</code> | Amount in cents, digits only, up to 10 digits (zero-padded to 10). |
| <code><a href="#@cnab/core.BarcodeParams.property.bankCode">BankCode</a></code> | <code>string</code> | Bank code, exactly 3 digits (e.g. `104`, `341`). |
| <code><a href="#@cnab/core.BarcodeParams.property.currencyCode">CurrencyCode</a></code> | <code>string</code> | Currency code, exactly 1 digit (`9` = Real). |
| <code><a href="#@cnab/core.BarcodeParams.property.dueDateIso">DueDateIso</a></code> | <code>string</code> | Due date as ISO `YYYY-MM-DD`; |
| <code><a href="#@cnab/core.BarcodeParams.property.freeField">FreeField</a></code> | <code>string</code> | Bank-specific free field (campo livre), exactly 25 digits. |

---

##### `AmountCents`<sup>Required</sup> <a name="AmountCents" id="@cnab/core.BarcodeParams.property.amountCents"></a>

```csharp
public string AmountCents { get; set; }
```

- *Type:* string

Amount in cents, digits only, up to 10 digits (zero-padded to 10).

---

##### `BankCode`<sup>Required</sup> <a name="BankCode" id="@cnab/core.BarcodeParams.property.bankCode"></a>

```csharp
public string BankCode { get; set; }
```

- *Type:* string

Bank code, exactly 3 digits (e.g. `104`, `341`).

---

##### `CurrencyCode`<sup>Required</sup> <a name="CurrencyCode" id="@cnab/core.BarcodeParams.property.currencyCode"></a>

```csharp
public string CurrencyCode { get; set; }
```

- *Type:* string

Currency code, exactly 1 digit (`9` = Real).

---

##### `DueDateIso`<sup>Required</sup> <a name="DueDateIso" id="@cnab/core.BarcodeParams.property.dueDateIso"></a>

```csharp
public string DueDateIso { get; set; }
```

- *Type:* string

Due date as ISO `YYYY-MM-DD`;

encoded as the 4-digit fator de vencimento.

---

##### `FreeField`<sup>Required</sup> <a name="FreeField" id="@cnab/core.BarcodeParams.property.freeField"></a>

```csharp
public string FreeField { get; set; }
```

- *Type:* string

Bank-specific free field (campo livre), exactly 25 digits.

---

### BrCodeFields <a name="BrCodeFields" id="@cnab/core.BrCodeFields"></a>

Decoded result of {@link BrCode.decode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeFields.Initializer"></a>

```csharp
using Cnab.Core;

new BrCodeFields {
    string Amount,
    string Crc,
    bool CrcValid,
    string Description,
    string MerchantCity,
    string MerchantName,
    string PixKey,
    string Txid
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeFields.property.amount">Amount</a></code> | <code>string</code> | Empty string when the payload carries no amount. |
| <code><a href="#@cnab/core.BrCodeFields.property.crc">Crc</a></code> | <code>string</code> | The 4 hex characters found in tag 63. |
| <code><a href="#@cnab/core.BrCodeFields.property.crcValid">CrcValid</a></code> | <code>bool</code> | Whether the payload's own CRC matches a recomputation. |
| <code><a href="#@cnab/core.BrCodeFields.property.description">Description</a></code> | <code>string</code> | Empty string when tag 26 carries no description. |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantCity">MerchantCity</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantName">MerchantName</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.pixKey">PixKey</a></code> | <code>string</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.txid">Txid</a></code> | <code>string</code> | *No description.* |

---

##### `Amount`<sup>Required</sup> <a name="Amount" id="@cnab/core.BrCodeFields.property.amount"></a>

```csharp
public string Amount { get; set; }
```

- *Type:* string

Empty string when the payload carries no amount.

---

##### `Crc`<sup>Required</sup> <a name="Crc" id="@cnab/core.BrCodeFields.property.crc"></a>

```csharp
public string Crc { get; set; }
```

- *Type:* string

The 4 hex characters found in tag 63.

---

##### `CrcValid`<sup>Required</sup> <a name="CrcValid" id="@cnab/core.BrCodeFields.property.crcValid"></a>

```csharp
public bool CrcValid { get; set; }
```

- *Type:* bool

Whether the payload's own CRC matches a recomputation.

---

##### `Description`<sup>Required</sup> <a name="Description" id="@cnab/core.BrCodeFields.property.description"></a>

```csharp
public string Description { get; set; }
```

- *Type:* string

Empty string when tag 26 carries no description.

---

##### `MerchantCity`<sup>Required</sup> <a name="MerchantCity" id="@cnab/core.BrCodeFields.property.merchantCity"></a>

```csharp
public string MerchantCity { get; set; }
```

- *Type:* string

---

##### `MerchantName`<sup>Required</sup> <a name="MerchantName" id="@cnab/core.BrCodeFields.property.merchantName"></a>

```csharp
public string MerchantName { get; set; }
```

- *Type:* string

---

##### `PixKey`<sup>Required</sup> <a name="PixKey" id="@cnab/core.BrCodeFields.property.pixKey"></a>

```csharp
public string PixKey { get; set; }
```

- *Type:* string

---

##### `Txid`<sup>Required</sup> <a name="Txid" id="@cnab/core.BrCodeFields.property.txid"></a>

```csharp
public string Txid { get; set; }
```

- *Type:* string

---

### BrCodeParams <a name="BrCodeParams" id="@cnab/core.BrCodeParams"></a>

Inputs for {@link BrCode.encode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeParams.Initializer"></a>

```csharp
using Cnab.Core;

new BrCodeParams {
    string MerchantCity,
    string MerchantName,
    string PixKey,
    string Amount = null,
    string Description = null,
    bool SingleUse = null,
    string Txid = null
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantCity">MerchantCity</a></code> | <code>string</code> | Beneficiary city. |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantName">MerchantName</a></code> | <code>string</code> | Beneficiary name. |
| <code><a href="#@cnab/core.BrCodeParams.property.pixKey">PixKey</a></code> | <code>string</code> | PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key. |
| <code><a href="#@cnab/core.BrCodeParams.property.amount">Amount</a></code> | <code>string</code> | Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose. |
| <code><a href="#@cnab/core.BrCodeParams.property.description">Description</a></code> | <code>string</code> | Optional free-text description carried inside tag 26. |
| <code><a href="#@cnab/core.BrCodeParams.property.singleUse">SingleUse</a></code> | <code>bool</code> | `true` marks the code single-use (initiation method `12`). |
| <code><a href="#@cnab/core.BrCodeParams.property.txid">Txid</a></code> | <code>string</code> | Transaction id. |

---

##### `MerchantCity`<sup>Required</sup> <a name="MerchantCity" id="@cnab/core.BrCodeParams.property.merchantCity"></a>

```csharp
public string MerchantCity { get; set; }
```

- *Type:* string

Beneficiary city.

Truncated to 15 characters after sanitising.

---

##### `MerchantName`<sup>Required</sup> <a name="MerchantName" id="@cnab/core.BrCodeParams.property.merchantName"></a>

```csharp
public string MerchantName { get; set; }
```

- *Type:* string

Beneficiary name.

Truncated to 25 characters after sanitising.

---

##### `PixKey`<sup>Required</sup> <a name="PixKey" id="@cnab/core.BrCodeParams.property.pixKey"></a>

```csharp
public string PixKey { get; set; }
```

- *Type:* string

PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key.

---

##### `Amount`<sup>Optional</sup> <a name="Amount" id="@cnab/core.BrCodeParams.property.amount"></a>

```csharp
public string Amount { get; set; }
```

- *Type:* string

Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose.

---

##### `Description`<sup>Optional</sup> <a name="Description" id="@cnab/core.BrCodeParams.property.description"></a>

```csharp
public string Description { get; set; }
```

- *Type:* string

Optional free-text description carried inside tag 26.

---

##### `SingleUse`<sup>Optional</sup> <a name="SingleUse" id="@cnab/core.BrCodeParams.property.singleUse"></a>

```csharp
public bool SingleUse { get; set; }
```

- *Type:* bool

`true` marks the code single-use (initiation method `12`).

Reusable codes
omit the tag entirely, which is what the BACEN static examples do.

---

##### `Txid`<sup>Optional</sup> <a name="Txid" id="@cnab/core.BrCodeParams.property.txid"></a>

```csharp
public string Txid { get; set; }
```

- *Type:* string

Transaction id.

Defaults to `"***"`, which means "not specified".
Alphanumeric, at most 25 characters.

---

### DetectedScope <a name="DetectedScope" id="@cnab/core.DetectedScope"></a>

The scope of a CNAB file inferred from its content (see `CnabFile.detectScope`).

#### Initializer <a name="Initializer" id="@cnab/core.DetectedScope.Initializer"></a>

```csharp
using Cnab.Core;

new DetectedScope {
    string Bank,
    string Direction,
    string Layout,
    string Variant
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.DetectedScope.property.bank">Bank</a></code> | <code>string</code> | Detected bank code, e.g. `104`. |
| <code><a href="#@cnab/core.DetectedScope.property.direction">Direction</a></code> | <code>string</code> | Detected direction, `remessa` or `retorno`. |
| <code><a href="#@cnab/core.DetectedScope.property.layout">Layout</a></code> | <code>string</code> | Detected layout family, `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.DetectedScope.property.variant">Variant</a></code> | <code>string</code> | Detected variant, e.g. `sigcb` (empty when the bank has none). |

---

##### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.DetectedScope.property.bank"></a>

```csharp
public string Bank { get; set; }
```

- *Type:* string

Detected bank code, e.g. `104`.

---

##### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.DetectedScope.property.direction"></a>

```csharp
public string Direction { get; set; }
```

- *Type:* string

Detected direction, `remessa` or `retorno`.

---

##### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.DetectedScope.property.layout"></a>

```csharp
public string Layout { get; set; }
```

- *Type:* string

Detected layout family, `cnab240` or `cnab400`.

---

##### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.DetectedScope.property.variant"></a>

```csharp
public string Variant { get; set; }
```

- *Type:* string

Detected variant, e.g. `sigcb` (empty when the bank has none).

---

### FieldSpec <a name="FieldSpec" id="@cnab/core.FieldSpec"></a>

Specification of a single positioned field within a record.

#### Initializer <a name="Initializer" id="@cnab/core.FieldSpec.Initializer"></a>

```csharp
using Cnab.Core;

new FieldSpec {
    string DateFormat,
    double Decimals,
    string DefaultValue,
    string Description,
    double End,
    FieldType FieldType,
    string Name,
    double Start
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.FieldSpec.property.dateFormat">DateFormat</a></code> | <code>string</code> | Language-neutral date format token (empty when not a date field). |
| <code><a href="#@cnab/core.FieldSpec.property.decimals">Decimals</a></code> | <code>double</code> | Number of implied decimal places (0 when not a decimal field). |
| <code><a href="#@cnab/core.FieldSpec.property.defaultValue">DefaultValue</a></code> | <code>string</code> | Default value applied by `build` when no value is supplied. |
| <code><a href="#@cnab/core.FieldSpec.property.description">Description</a></code> | <code>string</code> | Short human description. |
| <code><a href="#@cnab/core.FieldSpec.property.end">End</a></code> | <code>double</code> | 1-based end position, inclusive. |
| <code><a href="#@cnab/core.FieldSpec.property.fieldType">FieldType</a></code> | <code><a href="#@cnab/core.FieldType">FieldType</a></code> | Field type / padding behaviour. |
| <code><a href="#@cnab/core.FieldSpec.property.name">Name</a></code> | <code>string</code> | Canonical field name (the key used by `parse`/`build`). |
| <code><a href="#@cnab/core.FieldSpec.property.start">Start</a></code> | <code>double</code> | 1-based start position, inclusive. |

---

##### `DateFormat`<sup>Required</sup> <a name="DateFormat" id="@cnab/core.FieldSpec.property.dateFormat"></a>

```csharp
public string DateFormat { get; set; }
```

- *Type:* string

Language-neutral date format token (empty when not a date field).

---

##### `Decimals`<sup>Required</sup> <a name="Decimals" id="@cnab/core.FieldSpec.property.decimals"></a>

```csharp
public double Decimals { get; set; }
```

- *Type:* double

Number of implied decimal places (0 when not a decimal field).

---

##### `DefaultValue`<sup>Required</sup> <a name="DefaultValue" id="@cnab/core.FieldSpec.property.defaultValue"></a>

```csharp
public string DefaultValue { get; set; }
```

- *Type:* string

Default value applied by `build` when no value is supplied.

---

##### `Description`<sup>Required</sup> <a name="Description" id="@cnab/core.FieldSpec.property.description"></a>

```csharp
public string Description { get; set; }
```

- *Type:* string

Short human description.

---

##### `End`<sup>Required</sup> <a name="End" id="@cnab/core.FieldSpec.property.end"></a>

```csharp
public double End { get; set; }
```

- *Type:* double

1-based end position, inclusive.

---

##### `FieldType`<sup>Required</sup> <a name="FieldType" id="@cnab/core.FieldSpec.property.fieldType"></a>

```csharp
public FieldType FieldType { get; set; }
```

- *Type:* <a href="#@cnab/core.FieldType">FieldType</a>

Field type / padding behaviour.

---

##### `Name`<sup>Required</sup> <a name="Name" id="@cnab/core.FieldSpec.property.name"></a>

```csharp
public string Name { get; set; }
```

- *Type:* string

Canonical field name (the key used by `parse`/`build`).

---

##### `Start`<sup>Required</sup> <a name="Start" id="@cnab/core.FieldSpec.property.start"></a>

```csharp
public double Start { get; set; }
```

- *Type:* double

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

```csharp
using Cnab.Core;

new LineOptions {
    bool StripNonDigits,
    bool TruncateOversized
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.LineOptions.property.stripNonDigits">StripNonDigits</a></code> | <code>bool</code> | When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input. |
| <code><a href="#@cnab/core.LineOptions.property.truncateOversized">TruncateOversized</a></code> | <code>bool</code> | When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`). |

---

##### `StripNonDigits`<sup>Required</sup> <a name="StripNonDigits" id="@cnab/core.LineOptions.property.stripNonDigits"></a>

```csharp
public bool StripNonDigits { get; set; }
```

- *Type:* bool

When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input.

---

##### `TruncateOversized`<sup>Required</sup> <a name="TruncateOversized" id="@cnab/core.LineOptions.property.truncateOversized"></a>

```csharp
public bool TruncateOversized { get; set; }
```

- *Type:* bool

When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`).

---

### ParsedLine <a name="ParsedLine" id="@cnab/core.ParsedLine"></a>

One parsed line of a whole CNAB file.

#### Initializer <a name="Initializer" id="@cnab/core.ParsedLine.Initializer"></a>

```csharp
using Cnab.Core;

new ParsedLine {
    System.Collections.Generic.IDictionary<string, string> Fields,
    string RecordKey,
    string Segment,
    string Tipo
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ParsedLine.property.fields">Fields</a></code> | <code>System.Collections.Generic.IDictionary<string, string></code> | Parsed field values (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.recordKey">RecordKey</a></code> | <code>string</code> | Detected record key (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.segment">Segment</a></code> | <code>string</code> | The segment code for CNAB240 detail lines (empty otherwise). |
| <code><a href="#@cnab/core.ParsedLine.property.tipo">Tipo</a></code> | <code>string</code> | The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1). |

---

##### `Fields`<sup>Required</sup> <a name="Fields" id="@cnab/core.ParsedLine.property.fields"></a>

```csharp
public System.Collections.Generic.IDictionary<string, string> Fields { get; set; }
```

- *Type:* System.Collections.Generic.IDictionary<string, string>

Parsed field values (empty when the line could not be classified).

---

##### `RecordKey`<sup>Required</sup> <a name="RecordKey" id="@cnab/core.ParsedLine.property.recordKey"></a>

```csharp
public string RecordKey { get; set; }
```

- *Type:* string

Detected record key (empty when the line could not be classified).

---

##### `Segment`<sup>Required</sup> <a name="Segment" id="@cnab/core.ParsedLine.property.segment"></a>

```csharp
public string Segment { get; set; }
```

- *Type:* string

The segment code for CNAB240 detail lines (empty otherwise).

---

##### `Tipo`<sup>Required</sup> <a name="Tipo" id="@cnab/core.ParsedLine.property.tipo"></a>

```csharp
public string Tipo { get; set; }
```

- *Type:* string

The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1).

---

### RecordSpec <a name="RecordSpec" id="@cnab/core.RecordSpec"></a>

Specification of a whole record (one full 240/400 line).

#### Initializer <a name="Initializer" id="@cnab/core.RecordSpec.Initializer"></a>

```csharp
using Cnab.Core;

new RecordSpec {
    string Bank,
    string Direction,
    FieldSpec[] Fields,
    string Layout,
    double LineLength,
    string Record,
    string Variant
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.RecordSpec.property.bank">Bank</a></code> | <code>string</code> | Bank code, e.g. `104`. |
| <code><a href="#@cnab/core.RecordSpec.property.direction">Direction</a></code> | <code>string</code> | Optional direction, e.g. `remessa`/`retorno` (empty when none). |
| <code><a href="#@cnab/core.RecordSpec.property.fields">Fields</a></code> | <code><a href="#@cnab/core.FieldSpec">FieldSpec</a>[]</code> | All fields, ordered by position. |
| <code><a href="#@cnab/core.RecordSpec.property.layout">Layout</a></code> | <code>string</code> | Layout family, e.g. `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.RecordSpec.property.lineLength">LineLength</a></code> | <code>double</code> | Total line length (240 or 400). |
| <code><a href="#@cnab/core.RecordSpec.property.record">Record</a></code> | <code>string</code> | Record name, e.g. `header_arquivo`. |
| <code><a href="#@cnab/core.RecordSpec.property.variant">Variant</a></code> | <code>string</code> | Optional variant, e.g. `sigcb` (empty when none). |

---

##### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.RecordSpec.property.bank"></a>

```csharp
public string Bank { get; set; }
```

- *Type:* string

Bank code, e.g. `104`.

---

##### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.RecordSpec.property.direction"></a>

```csharp
public string Direction { get; set; }
```

- *Type:* string

Optional direction, e.g. `remessa`/`retorno` (empty when none).

---

##### `Fields`<sup>Required</sup> <a name="Fields" id="@cnab/core.RecordSpec.property.fields"></a>

```csharp
public FieldSpec[] Fields { get; set; }
```

- *Type:* <a href="#@cnab/core.FieldSpec">FieldSpec</a>[]

All fields, ordered by position.

---

##### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.RecordSpec.property.layout"></a>

```csharp
public string Layout { get; set; }
```

- *Type:* string

Layout family, e.g. `cnab240` or `cnab400`.

---

##### `LineLength`<sup>Required</sup> <a name="LineLength" id="@cnab/core.RecordSpec.property.lineLength"></a>

```csharp
public double LineLength { get; set; }
```

- *Type:* double

Total line length (240 or 400).

---

##### `Record`<sup>Required</sup> <a name="Record" id="@cnab/core.RecordSpec.property.record"></a>

```csharp
public string Record { get; set; }
```

- *Type:* string

Record name, e.g. `header_arquivo`.

---

##### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.RecordSpec.property.variant"></a>

```csharp
public string Variant { get; set; }
```

- *Type:* string

Optional variant, e.g. `sigcb` (empty when none).

---

### ValidationResult <a name="ValidationResult" id="@cnab/core.ValidationResult"></a>

Outcome of validating a line against a record spec.

#### Initializer <a name="Initializer" id="@cnab/core.ValidationResult.Initializer"></a>

```csharp
using Cnab.Core;

new ValidationResult {
    string[] Errors,
    bool Valid
};
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ValidationResult.property.errors">Errors</a></code> | <code>string[]</code> | Human-readable problems (empty when valid). |
| <code><a href="#@cnab/core.ValidationResult.property.valid">Valid</a></code> | <code>bool</code> | True when no problems were found. |

---

##### `Errors`<sup>Required</sup> <a name="Errors" id="@cnab/core.ValidationResult.property.errors"></a>

```csharp
public string[] Errors { get; set; }
```

- *Type:* string[]

Human-readable problems (empty when valid).

---

##### `Valid`<sup>Required</sup> <a name="Valid" id="@cnab/core.ValidationResult.property.valid"></a>

```csharp
public bool Valid { get; set; }
```

- *Type:* bool

True when no problems were found.

---

## Classes <a name="Classes" id="Classes"></a>

### Boleto <a name="Boleto" id="@cnab/core.Boleto"></a>

FEBRABAN cobrança barcode (44 digits) and linha digitável (47 digits) helpers.

Barcode layout (1-based positions):

* 1-3: bank code
* 4: currency code (`9`)
* 5: general check digit (DAC, `Modulo.mod11Boleto` over the other 43)
* 6-9: fator de vencimento (due-date factor)
* 10-19: amount in cents, zero-padded to 10
* 20-44: campo livre (25 bank-specific digits)


#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.Boleto.barcode">Barcode</a></code> | Compose the 44-digit FEBRABAN cobrança barcode. |
| <code><a href="#@cnab/core.Boleto.barcodeCheckDigit">BarcodeCheckDigit</a></code> | Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44). |
| <code><a href="#@cnab/core.Boleto.fatorVencimento">FatorVencimento</a></code> | Compute the 4-digit *fator de vencimento* for a due date. |
| <code><a href="#@cnab/core.Boleto.isValidBarcode">IsValidBarcode</a></code> | Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit. |
| <code><a href="#@cnab/core.Boleto.linhaDigitavel">LinhaDigitavel</a></code> | Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces). |
| <code><a href="#@cnab/core.Boleto.linhaDigitavelFormatted">LinhaDigitavelFormatted</a></code> | The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`. |
| <code><a href="#@cnab/core.Boleto.parseLinhaDigitavel">ParseLinhaDigitavel</a></code> | Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode. |

---

##### `Barcode` <a name="Barcode" id="@cnab/core.Boleto.barcode"></a>

```csharp
using Cnab.Core;

Boleto.Barcode(BarcodeParams Options);
```

Compose the 44-digit FEBRABAN cobrança barcode.

The general check digit (position 5) is computed with
`Modulo.mod11Boleto` over the other 43 digits.

###### `Options`<sup>Required</sup> <a name="Options" id="@cnab/core.Boleto.barcode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BarcodeParams">BarcodeParams</a>

bank, currency, due date, amount and campo livre.

---

##### `BarcodeCheckDigit` <a name="BarcodeCheckDigit" id="@cnab/core.Boleto.barcodeCheckDigit"></a>

```csharp
using Cnab.Core;

Boleto.BarcodeCheckDigit(string Barcode);
```

Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44).

Does not require the stored
DV (position 5) to be correct.

###### `Barcode`<sup>Required</sup> <a name="Barcode" id="@cnab/core.Boleto.barcodeCheckDigit.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `FatorVencimento` <a name="FatorVencimento" id="@cnab/core.Boleto.fatorVencimento"></a>

```csharp
using Cnab.Core;

Boleto.FatorVencimento(string DateIso);
```

Compute the 4-digit *fator de vencimento* for a due date.

The factor counts days since the FEBRABAN base date 1997-10-07
(1997-10-08 → `0001`). After the counter reached 9999 on 2025-02-21,
FEBRABAN restarted it at 1000 on 2025-02-22; factors keep cycling in
the 1000-9999 window: `factor > 9999 → ((factor - 1000) % 9000) + 1000`.

All arithmetic is done in UTC to avoid timezone off-by-one errors.

###### `DateIso`<sup>Required</sup> <a name="DateIso" id="@cnab/core.Boleto.fatorVencimento.parameter.dateIso"></a>

- *Type:* string

due date as ISO `YYYY-MM-DD`.

---

##### `IsValidBarcode` <a name="IsValidBarcode" id="@cnab/core.Boleto.isValidBarcode"></a>

```csharp
using Cnab.Core;

Boleto.IsValidBarcode(string Barcode);
```

Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit.

###### `Barcode`<sup>Required</sup> <a name="Barcode" id="@cnab/core.Boleto.isValidBarcode.parameter.barcode"></a>

- *Type:* string

---

##### `LinhaDigitavel` <a name="LinhaDigitavel" id="@cnab/core.Boleto.linhaDigitavel"></a>

```csharp
using Cnab.Core;

Boleto.LinhaDigitavel(string Barcode);
```

Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces).

Field layout (barcode positions are 1-based):

* field 1 (10 digits): barcode 1-4 + 20-24 + módulo-10 DV
* field 2 (11 digits): barcode 25-34 + módulo-10 DV
* field 3 (11 digits): barcode 35-44 + módulo-10 DV
* field 4 (1 digit): the barcode general DV (position 5)
* field 5 (14 digits): barcode 6-19 (fator de vencimento + amount)

###### `Barcode`<sup>Required</sup> <a name="Barcode" id="@cnab/core.Boleto.linhaDigitavel.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `LinhaDigitavelFormatted` <a name="LinhaDigitavelFormatted" id="@cnab/core.Boleto.linhaDigitavelFormatted"></a>

```csharp
using Cnab.Core;

Boleto.LinhaDigitavelFormatted(string Barcode);
```

The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`.

###### `Barcode`<sup>Required</sup> <a name="Barcode" id="@cnab/core.Boleto.linhaDigitavelFormatted.parameter.barcode"></a>

- *Type:* string

the 44-digit barcode.

---

##### `ParseLinhaDigitavel` <a name="ParseLinhaDigitavel" id="@cnab/core.Boleto.parseLinhaDigitavel"></a>

```csharp
using Cnab.Core;

Boleto.ParseLinhaDigitavel(string Linha);
```

Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode.

Validates the three módulo-10 field DVs and the reconstructed barcode's
general módulo-11 DV; throws with a clear message on any mismatch.

###### `Linha`<sup>Required</sup> <a name="Linha" id="@cnab/core.Boleto.parseLinhaDigitavel.parameter.linha"></a>

- *Type:* string

the linha digitável, plain or formatted.

---



### BrCode <a name="BrCode" id="@cnab/core.BrCode"></a>

Build, parse and verify the PIX BR Code payload.

```csharp
// Example automatically generated from non-compiling source. May contain errors.
var payload = BrCode.Encode(new Struct {
    PixKey = "fulano@example.com",
    MerchantName = "FULANO DE TAL",
    MerchantCity = "BRASILIA",
    Amount = "10.00"
});
BrCode.IsValid(payload); // true
BrCode.Decode(payload).PixKey;
```

#### Initializers <a name="Initializers" id="@cnab/core.BrCode.Initializer"></a>

```csharp
using Cnab.Core;

new BrCode();
```

| **Name** | **Type** | **Description** |
| --- | --- | --- |

---


#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.BrCode.crc16">Crc16</a></code> | CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded. |
| <code><a href="#@cnab/core.BrCode.decode">Decode</a></code> | Decode a BR Code payload into its fields, reporting CRC validity. |
| <code><a href="#@cnab/core.BrCode.encode">Encode</a></code> | Build a BR Code payload, CRC included. |
| <code><a href="#@cnab/core.BrCode.isValid">IsValid</a></code> | `true` when the payload's trailing CRC matches a recomputation over everything before it. |

---

##### `Crc16` <a name="Crc16" id="@cnab/core.BrCode.crc16"></a>

```csharp
using Cnab.Core;

BrCode.Crc16(string Payload);
```

CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded.

Canonical check: `crc16("123456789") === "29B1"`.

###### `Payload`<sup>Required</sup> <a name="Payload" id="@cnab/core.BrCode.crc16.parameter.payload"></a>

- *Type:* string

---

##### `Decode` <a name="Decode" id="@cnab/core.BrCode.decode"></a>

```csharp
using Cnab.Core;

BrCode.Decode(string Payload);
```

Decode a BR Code payload into its fields, reporting CRC validity.

###### `Payload`<sup>Required</sup> <a name="Payload" id="@cnab/core.BrCode.decode.parameter.payload"></a>

- *Type:* string

---

##### `Encode` <a name="Encode" id="@cnab/core.BrCode.encode"></a>

```csharp
using Cnab.Core;

BrCode.Encode(BrCodeParams Options);
```

Build a BR Code payload, CRC included.

###### `Options`<sup>Required</sup> <a name="Options" id="@cnab/core.BrCode.encode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BrCodeParams">BrCodeParams</a>

---

##### `IsValid` <a name="IsValid" id="@cnab/core.BrCode.isValid"></a>

```csharp
using Cnab.Core;

BrCode.IsValid(string Payload);
```

`true` when the payload's trailing CRC matches a recomputation over everything before it.

Returns `false` rather than throwing for anything
that is not a well-formed payload — callers use this as a predicate.

###### `Payload`<sup>Required</sup> <a name="Payload" id="@cnab/core.BrCode.isValid.parameter.payload"></a>

- *Type:* string

---



### CnabFile <a name="CnabFile" id="@cnab/core.CnabFile"></a>

Parses a whole CNAB file (many lines of mixed record types) by detecting each line's record type from its discriminator positions and dispatching to the matching record spec.

Scope it to one bank/variant/direction with `forBank`.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.parse">Parse</a></code> | Parse a whole file's content into one `ParsedLine` per non-empty line. |

---

##### `Parse` <a name="Parse" id="@cnab/core.CnabFile.parse"></a>

```csharp
private ParsedLine[] Parse(string Content)
```

Parse a whole file's content into one `ParsedLine` per non-empty line.

A leading UTF-8 BOM (U+FEFF) is ignored, and both LF and CRLF line endings
are accepted.

###### `Content`<sup>Required</sup> <a name="Content" id="@cnab/core.CnabFile.parse.parameter.content"></a>

- *Type:* string

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.detect">Detect</a></code> | Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it. |
| <code><a href="#@cnab/core.CnabFile.detectScope">DetectScope</a></code> | Infer a file's scope (layout / bank / variant / direction) from its first line (the header_arquivo):. |
| <code><a href="#@cnab/core.CnabFile.forBank">ForBank</a></code> | Build a file parser scoped to the records of one bank (and optional variant / direction). |
| <code><a href="#@cnab/core.CnabFile.forBankBundled">ForBankBundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `Detect` <a name="Detect" id="@cnab/core.CnabFile.detect"></a>

```csharp
using Cnab.Core;

CnabFile.Detect(string SpecJson, string Content);
```

Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it.

Throws the same errors as `detectScope`
when the content cannot be identified.

###### `SpecJson`<sup>Required</sup> <a name="SpecJson" id="@cnab/core.CnabFile.detect.parameter.specJson"></a>

- *Type:* string

---

###### `Content`<sup>Required</sup> <a name="Content" id="@cnab/core.CnabFile.detect.parameter.content"></a>

- *Type:* string

---

##### `DetectScope` <a name="DetectScope" id="@cnab/core.CnabFile.detectScope"></a>

```csharp
using Cnab.Core;

CnabFile.DetectScope(string SpecJson, string Content);
```

Infer a file's scope (layout / bank / variant / direction) from its first line (the header_arquivo):.

* **layout** from the line length: 240 -> `cnab240`, 400 -> `cnab400`;
* **bank** from `codigo_banco`: positions 1-3 (CNAB240) or 77-79 (CNAB400);
* **direction** from the CNAB240 header position 143 (`1` remessa /
  `2` retorno), or for CNAB400 from header position 2 (`1` remessa /
  `2` retorno) corroborated by the `REMESSA`/`RETORNO` literal at 3-9;
* **variant** by trying every candidate variant of the detected bank and
  keeping the one whose records classify the most lines of the file.

Throws an `Error` with a descriptive message when the content cannot be
detected: empty input, a first line that is not 240/400 characters long, a
position 1-3 / 77-79 value that is not a three-digit bank code, an
unrecognizable direction indicator, or a bank with no matching records in
the spec.

A leading UTF-8 BOM (U+FEFF) is ignored, and both LF and CRLF line endings
are accepted.

###### `SpecJson`<sup>Required</sup> <a name="SpecJson" id="@cnab/core.CnabFile.detectScope.parameter.specJson"></a>

- *Type:* string

---

###### `Content`<sup>Required</sup> <a name="Content" id="@cnab/core.CnabFile.detectScope.parameter.content"></a>

- *Type:* string

---

##### `ForBank` <a name="ForBank" id="@cnab/core.CnabFile.forBank"></a>

```csharp
using Cnab.Core;

CnabFile.ForBank(string SpecJson, string Layout, string Bank, string Variant, string Direction);
```

Build a file parser scoped to the records of one bank (and optional variant / direction).

`variant` and `direction` may be empty strings.

###### `SpecJson`<sup>Required</sup> <a name="SpecJson" id="@cnab/core.CnabFile.forBank.parameter.specJson"></a>

- *Type:* string

---

###### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.CnabFile.forBank.parameter.layout"></a>

- *Type:* string

---

###### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.CnabFile.forBank.parameter.bank"></a>

- *Type:* string

---

###### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.CnabFile.forBank.parameter.variant"></a>

- *Type:* string

---

###### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.CnabFile.forBank.parameter.direction"></a>

- *Type:* string

---

##### `ForBankBundled` <a name="ForBankBundled" id="@cnab/core.CnabFile.forBankBundled"></a>

```csharp
using Cnab.Core;

CnabFile.ForBankBundled(string Layout, string Bank, string Variant, string Direction);
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.CnabFile.forBankBundled.parameter.layout"></a>

- *Type:* string

---

###### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.CnabFile.forBankBundled.parameter.bank"></a>

- *Type:* string

---

###### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.CnabFile.forBankBundled.parameter.variant"></a>

- *Type:* string

---

###### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.CnabFile.forBankBundled.parameter.direction"></a>

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
| <code><a href="#@cnab/core.CnabFileBuilder.addDetail">AddDetail</a></code> | Append a detail line. |
| <code><a href="#@cnab/core.CnabFileBuilder.endLote">EndLote</a></code> | CNAB240 only: close the open lote with the given `trailer_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.startLote">StartLote</a></code> | CNAB240 only: begin a new lote with the given `header_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.toFileContent">ToFileContent</a></code> | Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline). |
| <code><a href="#@cnab/core.CnabFileBuilder.withHeader">WithHeader</a></code> | Set the values for the `header_arquivo` record. |

---

##### `AddDetail` <a name="AddDetail" id="@cnab/core.CnabFileBuilder.addDetail"></a>

```csharp
private void AddDetail(string RecordName, System.Collections.Generic.IDictionary<string, string> Values)
```

Append a detail line.

`recordName` is the record's short name in scope,
e.g. `detalhe_segmento_p` (CNAB240) or `detalhe` (CNAB400). Throws when
the name is unknown in this scope or (CNAB240) when no lote is open.

###### `RecordName`<sup>Required</sup> <a name="RecordName" id="@cnab/core.CnabFileBuilder.addDetail.parameter.recordName"></a>

- *Type:* string

---

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabFileBuilder.addDetail.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

##### `EndLote` <a name="EndLote" id="@cnab/core.CnabFileBuilder.endLote"></a>

```csharp
private void EndLote(System.Collections.Generic.IDictionary<string, string> TrailerValues)
```

CNAB240 only: close the open lote with the given `trailer_lote` values.

The lote's `qtde_registro_lote` (header_lote + details + trailer_lote) is
auto-computed unless supplied here.

###### `TrailerValues`<sup>Required</sup> <a name="TrailerValues" id="@cnab/core.CnabFileBuilder.endLote.parameter.trailerValues"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

##### `StartLote` <a name="StartLote" id="@cnab/core.CnabFileBuilder.startLote"></a>

```csharp
private void StartLote(System.Collections.Generic.IDictionary<string, string> HeaderValues)
```

CNAB240 only: begin a new lote with the given `header_lote` values.

Throws for CNAB400 (which has no lotes) and when a lote is already open.

###### `HeaderValues`<sup>Required</sup> <a name="HeaderValues" id="@cnab/core.CnabFileBuilder.startLote.parameter.headerValues"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

##### `ToFileContent` <a name="ToFileContent" id="@cnab/core.CnabFileBuilder.toFileContent"></a>

```csharp
private string ToFileContent(System.Collections.Generic.IDictionary<string, string> TrailerValues)
```

Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline).

Control fields are auto-computed
per layout (see ADR 0007); user-supplied counter/total values win, pure
sequence counters are always builder-owned.

###### `TrailerValues`<sup>Required</sup> <a name="TrailerValues" id="@cnab/core.CnabFileBuilder.toFileContent.parameter.trailerValues"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

##### `WithHeader` <a name="WithHeader" id="@cnab/core.CnabFileBuilder.withHeader"></a>

```csharp
private void WithHeader(System.Collections.Generic.IDictionary<string, string> Values)
```

Set the values for the `header_arquivo` record.

(Named `withHeader`
rather than `setHeader` because jsii prohibits `setXxx` method names —
they conflict with Java property setters.)

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabFileBuilder.withHeader.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFileBuilder.forBank">ForBank</a></code> | Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings. |
| <code><a href="#@cnab/core.CnabFileBuilder.forBankBundled">ForBankBundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `ForBank` <a name="ForBank" id="@cnab/core.CnabFileBuilder.forBank"></a>

```csharp
using Cnab.Core;

CnabFileBuilder.ForBank(string SpecJson, string Layout, string Bank, string Variant, string Direction);
```

Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings.

###### `SpecJson`<sup>Required</sup> <a name="SpecJson" id="@cnab/core.CnabFileBuilder.forBank.parameter.specJson"></a>

- *Type:* string

---

###### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.CnabFileBuilder.forBank.parameter.layout"></a>

- *Type:* string

---

###### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.CnabFileBuilder.forBank.parameter.bank"></a>

- *Type:* string

---

###### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.CnabFileBuilder.forBank.parameter.variant"></a>

- *Type:* string

---

###### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.CnabFileBuilder.forBank.parameter.direction"></a>

- *Type:* string

---

##### `ForBankBundled` <a name="ForBankBundled" id="@cnab/core.CnabFileBuilder.forBankBundled"></a>

```csharp
using Cnab.Core;

CnabFileBuilder.ForBankBundled(string Layout, string Bank, string Variant, string Direction);
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `Layout`<sup>Required</sup> <a name="Layout" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.layout"></a>

- *Type:* string

---

###### `Bank`<sup>Required</sup> <a name="Bank" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.bank"></a>

- *Type:* string

---

###### `Variant`<sup>Required</sup> <a name="Variant" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.variant"></a>

- *Type:* string

---

###### `Direction`<sup>Required</sup> <a name="Direction" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.direction"></a>

- *Type:* string

---



### CnabRecord <a name="CnabRecord" id="@cnab/core.CnabRecord"></a>

A single CNAB record spec with operations to `parse`, `build` and `validate` one fixed-width line.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.getDateIso">GetDateIso</a></code> | Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069; |
| <code><a href="#@cnab/core.CnabRecord.getDecimal">GetDecimal</a></code> | Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged. |
| <code><a href="#@cnab/core.CnabRecord.parse">Parse</a></code> | Parse a fixed-width line into a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.setDateIso">SetDateIso</a></code> | Set the value of a date/time field from an ISO string, the inverse of `getDateIso`:. |
| <code><a href="#@cnab/core.CnabRecord.setDecimal">SetDecimal</a></code> | Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`). |
| <code><a href="#@cnab/core.CnabRecord.toLine">ToLine</a></code> | Build a fixed-width line from a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.toLineWithOptions">ToLineWithOptions</a></code> | Same as `toLine`, but with explicit control over what happens to values that do not fit or are not digit strings (see `LineOptions`). |
| <code><a href="#@cnab/core.CnabRecord.validate">Validate</a></code> | Validate a line against this record spec. |

---

##### `GetDateIso` <a name="GetDateIso" id="@cnab/core.CnabRecord.getDateIso"></a>

```csharp
private string GetDateIso(System.Collections.Generic.IDictionary<string, string> Values, string Name)
```

Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069;

see ADR 0006)

* `HHmmss`   -> `HH:mm:ss`

Returns `''` when the raw value is all zeros (CNAB's "unset" convention).
Throws when the field name is unknown, the field has no `dateFormat`, or
the stored value is not a digit string.

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.getDateIso.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

###### `Name`<sup>Required</sup> <a name="Name" id="@cnab/core.CnabRecord.getDateIso.parameter.name"></a>

- *Type:* string

---

##### `GetDecimal` <a name="GetDecimal" id="@cnab/core.CnabRecord.getDecimal"></a>

```csharp
private string GetDecimal(System.Collections.Generic.IDictionary<string, string> Values, string Name)
```

Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged.

Numeric values cross the API boundary as decimal strings — never floats —
so they stay exact, jsii-safe and language-neutral (see ADR 0006).

Throws when the field name is unknown or the stored value is not a digit
string.

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.getDecimal.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

###### `Name`<sup>Required</sup> <a name="Name" id="@cnab/core.CnabRecord.getDecimal.parameter.name"></a>

- *Type:* string

---

##### `Parse` <a name="Parse" id="@cnab/core.CnabRecord.parse"></a>

```csharp
private System.Collections.Generic.IDictionary<string, string> Parse(string Line)
```

Parse a fixed-width line into a map of field name -> value.

Values are
normalized (alpha right-trimmed, numerics stripped of left padding) so that
`toLine(parse(line))` reproduces a well-formed line.

###### `Line`<sup>Required</sup> <a name="Line" id="@cnab/core.CnabRecord.parse.parameter.line"></a>

- *Type:* string

---

##### `SetDateIso` <a name="SetDateIso" id="@cnab/core.CnabRecord.setDateIso"></a>

```csharp
private System.Collections.Generic.IDictionary<string, string> SetDateIso(System.Collections.Generic.IDictionary<string, string> Values, string Name, string Iso)
```

Set the value of a date/time field from an ISO string, the inverse of `getDateIso`:.

* `ddMMyyyy`: `"2026-07-15"` -> `"15072026"`
* `ddMMyy`:   `"2026-07-15"` -> `"150726"` (the year must fall in the
  1970-2069 pivot window documented on `getDateIso`, otherwise it could
  not be read back)
* `HHmmss`:   `"10:30:00"` -> `"103000"`

An empty string stores the all-zeros "unset" value.

Returns a **new map** with the field set; the input is not modified. See
`setDecimal` for why this cannot mutate — jsii marshals maps by value, so
the old `void` + mutate signature only ever worked in Node.

```csharp
// Example automatically generated from non-compiling source. May contain errors.
values = record.SetDateIso(values, "vencimento", "2026-03-15");
```

Throws when the field name is unknown, the field has no `dateFormat`, or
the input is malformed (wrong shape, month/day/time component out of range).

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.setDateIso.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

###### `Name`<sup>Required</sup> <a name="Name" id="@cnab/core.CnabRecord.setDateIso.parameter.name"></a>

- *Type:* string

---

###### `Iso`<sup>Required</sup> <a name="Iso" id="@cnab/core.CnabRecord.setDateIso.parameter.iso"></a>

- *Type:* string

---

##### `SetDecimal` <a name="SetDecimal" id="@cnab/core.CnabRecord.setDecimal"></a>

```csharp
private System.Collections.Generic.IDictionary<string, string> SetDecimal(System.Collections.Generic.IDictionary<string, string> Values, string Name, string DecimalValue)
```

Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`).

Returns a **new map** with the field set; the input is not modified. It
cannot mutate: jsii marshals maps **by value**, so a mutation performed
here would be invisible to a Python/Java/.NET caller. This method used to
return `void` and mutate, which worked only in Node and silently did
nothing everywhere else.

```csharp
// Example automatically generated from non-compiling source. May contain errors.
values = record.SetDecimal(values, "valor_titulo", "1500.00");
```

Throws when the field name is unknown, the value is not a well-formed
decimal string, or it carries more fraction digits than the field allows.

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.setDecimal.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

###### `Name`<sup>Required</sup> <a name="Name" id="@cnab/core.CnabRecord.setDecimal.parameter.name"></a>

- *Type:* string

---

###### `DecimalValue`<sup>Required</sup> <a name="DecimalValue" id="@cnab/core.CnabRecord.setDecimal.parameter.decimalValue"></a>

- *Type:* string

---

##### `ToLine` <a name="ToLine" id="@cnab/core.CnabRecord.toLine"></a>

```csharp
private string ToLine(System.Collections.Generic.IDictionary<string, string> Values)
```

Build a fixed-width line from a map of field name -> value.

Missing fields
fall back to their default value. (Named `toLine` rather than `build`
because `build` is a prohibited member name in jsii.)

This is the **strict** builder: it never silently rewrites a value.
It throws an `Error` naming the field, its positions and its width when

* an alphanumeric value is longer than its field;
* a numeric value has more significant digits than its field (redundant
  leading zeros are fine: `"00150000"` in a 6-wide field is `"150000"`,
  nothing is lost);
* a numeric value is not a digit string (`"1500.00"`, `"-10"`, `"R$ 10"`).
  CNAB numeric fields are **unsigned digit strings** with implied decimals;
  use `setDecimal` to write decimal input.

An empty value is always allowed and produces the field's blank/zero fill;
on a numeric field an all-blank value means the same thing (CNAB's "unset"
spelling) and is zero-filled. Values produced by `parse` always round-trip:
`toLine(parse(line)) === line` for a well-formed line.

Use `toLineWithOptions` to opt back into the legacy lenient behaviour.

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.toLine.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

##### `ToLineWithOptions` <a name="ToLineWithOptions" id="@cnab/core.CnabRecord.toLineWithOptions"></a>

```csharp
private string ToLineWithOptions(System.Collections.Generic.IDictionary<string, string> Values, LineOptions Options)
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

###### `Values`<sup>Required</sup> <a name="Values" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.values"></a>

- *Type:* System.Collections.Generic.IDictionary<string, string>

---

###### `Options`<sup>Required</sup> <a name="Options" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.options"></a>

- *Type:* <a href="#@cnab/core.LineOptions">LineOptions</a>

---

##### `Validate` <a name="Validate" id="@cnab/core.CnabRecord.validate"></a>

```csharp
private ValidationResult Validate(string Line)
```

Validate a line against this record spec.

###### `Line`<sup>Required</sup> <a name="Line" id="@cnab/core.CnabRecord.validate.parameter.line"></a>

- *Type:* string

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.fromJson">FromJson</a></code> | Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`). |

---

##### `FromJson` <a name="FromJson" id="@cnab/core.CnabRecord.fromJson"></a>

```csharp
using Cnab.Core;

CnabRecord.FromJson(string Json);
```

Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`).

###### `Json`<sup>Required</sup> <a name="Json" id="@cnab/core.CnabRecord.fromJson.parameter.json"></a>

- *Type:* string

---

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.CnabRecord.property.spec">Spec</a></code> | <code><a href="#@cnab/core.RecordSpec">RecordSpec</a></code> | The underlying record specification. |

---

##### `Spec`<sup>Required</sup> <a name="Spec" id="@cnab/core.CnabRecord.property.spec"></a>

```csharp
public RecordSpec Spec { get; }
```

- *Type:* <a href="#@cnab/core.RecordSpec">RecordSpec</a>

The underlying record specification.

---


### CnabSpec <a name="CnabSpec" id="@cnab/core.CnabSpec"></a>

A compiled spec: a collection of named records (whole `spec.json`).

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.codeTableKeys">CodeTableKeys</a></code> | All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`. |
| <code><a href="#@cnab/core.CnabSpec.getCodeTable">GetCodeTable</a></code> | Get a code table (code -> description map) by key. |
| <code><a href="#@cnab/core.CnabSpec.getRecord">GetRecord</a></code> | Get a record by key. |
| <code><a href="#@cnab/core.CnabSpec.hasCodeTable">HasCodeTable</a></code> | Whether a code table with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.hasRecord">HasRecord</a></code> | Whether a record with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.lookupCode">LookupCode</a></code> | Look up a code's description in a table, or `''` when the code is unknown. |
| <code><a href="#@cnab/core.CnabSpec.recordKeys">RecordKeys</a></code> | All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`. |

---

##### `CodeTableKeys` <a name="CodeTableKeys" id="@cnab/core.CnabSpec.codeTableKeys"></a>

```csharp
private string[] CodeTableKeys()
```

All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`.

##### `GetCodeTable` <a name="GetCodeTable" id="@cnab/core.CnabSpec.getCodeTable"></a>

```csharp
private System.Collections.Generic.IDictionary<string, string> GetCodeTable(string Key)
```

Get a code table (code -> description map) by key.

Throws if it does not exist.

###### `Key`<sup>Required</sup> <a name="Key" id="@cnab/core.CnabSpec.getCodeTable.parameter.key"></a>

- *Type:* string

---

##### `GetRecord` <a name="GetRecord" id="@cnab/core.CnabSpec.getRecord"></a>

```csharp
private CnabRecord GetRecord(string Key)
```

Get a record by key.

Throws if it does not exist.

###### `Key`<sup>Required</sup> <a name="Key" id="@cnab/core.CnabSpec.getRecord.parameter.key"></a>

- *Type:* string

---

##### `HasCodeTable` <a name="HasCodeTable" id="@cnab/core.CnabSpec.hasCodeTable"></a>

```csharp
private bool HasCodeTable(string Key)
```

Whether a code table with the given key exists.

###### `Key`<sup>Required</sup> <a name="Key" id="@cnab/core.CnabSpec.hasCodeTable.parameter.key"></a>

- *Type:* string

---

##### `HasRecord` <a name="HasRecord" id="@cnab/core.CnabSpec.hasRecord"></a>

```csharp
private bool HasRecord(string Key)
```

Whether a record with the given key exists.

###### `Key`<sup>Required</sup> <a name="Key" id="@cnab/core.CnabSpec.hasRecord.parameter.key"></a>

- *Type:* string

---

##### `LookupCode` <a name="LookupCode" id="@cnab/core.CnabSpec.lookupCode"></a>

```csharp
private string LookupCode(string Key, string Code)
```

Look up a code's description in a table, or `''` when the code is unknown.

The code is normalized during lookup: tried as-is, then with leading zeros
stripped (legacy tables use unpadded keys like `"2"` while CNAB fields
carry `"02"`), then zero-padded to 2 digits.

###### `Key`<sup>Required</sup> <a name="Key" id="@cnab/core.CnabSpec.lookupCode.parameter.key"></a>

- *Type:* string

---

###### `Code`<sup>Required</sup> <a name="Code" id="@cnab/core.CnabSpec.lookupCode.parameter.code"></a>

- *Type:* string

---

##### `RecordKeys` <a name="RecordKeys" id="@cnab/core.CnabSpec.recordKeys"></a>

```csharp
private string[] RecordKeys()
```

All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`.

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.bundled">Bundled</a></code> | The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve. |
| <code><a href="#@cnab/core.CnabSpec.bundledJson">BundledJson</a></code> | The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too. |
| <code><a href="#@cnab/core.CnabSpec.fromJson">FromJson</a></code> | Load from the compiled `spec.json` content. |

---

##### `Bundled` <a name="Bundled" id="@cnab/core.CnabSpec.bundled"></a>

```csharp
using Cnab.Core;

CnabSpec.Bundled();
```

The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve.

This is the entry point for every non-Node language: a Python / Java /
.NET consumer installs the engine and immediately has the full catalog,
every record and every code table.

##### `BundledJson` <a name="BundledJson" id="@cnab/core.CnabSpec.bundledJson"></a>

```csharp
using Cnab.Core;

CnabSpec.BundledJson();
```

The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too.

##### `FromJson` <a name="FromJson" id="@cnab/core.CnabSpec.fromJson"></a>

```csharp
using Cnab.Core;

CnabSpec.FromJson(string Json);
```

Load from the compiled `spec.json` content.

###### `Json`<sup>Required</sup> <a name="Json" id="@cnab/core.CnabSpec.fromJson.parameter.json"></a>

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
| <code><a href="#@cnab/core.Modulo.mod10">Mod10</a></code> | Módulo 10 (boleto / linha digitável field DV). |
| <code><a href="#@cnab/core.Modulo.mod11">Mod11</a></code> | Generic CNAB módulo 11 (remessa/retorno field DVs). |
| <code><a href="#@cnab/core.Modulo.mod11Boleto">Mod11Boleto</a></code> | FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5). |

---

##### `Mod10` <a name="Mod10" id="@cnab/core.Modulo.mod10"></a>

```csharp
using Cnab.Core;

Modulo.Mod10(string Digits);
```

Módulo 10 (boleto / linha digitável field DV).

Rule: weights 2 and 1 alternate right-to-left starting with 2. Each
digit is multiplied by its weight; when a product exceeds 9 its decimal
digits are summed (e.g. 12 → 1 + 2 = 3). The DV is the amount needed to
reach the next multiple of 10: `(10 - (sum % 10)) % 10`.

###### `Digits`<sup>Required</sup> <a name="Digits" id="@cnab/core.Modulo.mod10.parameter.digits"></a>

- *Type:* string

numeric string (one or more digits).

---

##### `Mod11` <a name="Mod11" id="@cnab/core.Modulo.mod11"></a>

```csharp
using Cnab.Core;

Modulo.Mod11(string Digits);
```

Generic CNAB módulo 11 (remessa/retorno field DVs).

Rule: weights 2, 3, ..., 9 cycle right-to-left. The DV is
`11 - (sum % 11)`; when that result is 0, 10 or 11 the DV is 0.

###### `Digits`<sup>Required</sup> <a name="Digits" id="@cnab/core.Modulo.mod11.parameter.digits"></a>

- *Type:* string

numeric string (one or more digits).

---

##### `Mod11Boleto` <a name="Mod11Boleto" id="@cnab/core.Modulo.mod11Boleto"></a>

```csharp
using Cnab.Core;

Modulo.Mod11Boleto(string Digits);
```

FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5).

Rule: same weighting as `mod11` (weights 2..9 cycling right-to-left),
but the DV is `11 - (sum % 11)` mapped so that a result of 0, 1, 10 or
11 becomes 1 (the barcode DV can never be 0).

###### `Digits`<sup>Required</sup> <a name="Digits" id="@cnab/core.Modulo.mod11Boleto.parameter.digits"></a>

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

