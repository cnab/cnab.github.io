# API Reference <a name="API Reference" id="api-reference"></a>


## Structs <a name="Structs" id="Structs"></a>

### BarcodeParams <a name="BarcodeParams" id="@cnab/core.BarcodeParams"></a>

Parameters to compose a FEBRABAN cobrança barcode (44 digits).

#### Initializer <a name="Initializer" id="@cnab/core.BarcodeParams.Initializer"></a>

```python
import cnab_core

cnab_core.BarcodeParams(
  amount_cents: str,
  bank_code: str,
  currency_code: str,
  due_date_iso: str,
  free_field: str
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BarcodeParams.property.amountCents">amount_cents</a></code> | <code>str</code> | Amount in cents, digits only, up to 10 digits (zero-padded to 10). |
| <code><a href="#@cnab/core.BarcodeParams.property.bankCode">bank_code</a></code> | <code>str</code> | Bank code, exactly 3 digits (e.g. `104`, `341`). |
| <code><a href="#@cnab/core.BarcodeParams.property.currencyCode">currency_code</a></code> | <code>str</code> | Currency code, exactly 1 digit (`9` = Real). |
| <code><a href="#@cnab/core.BarcodeParams.property.dueDateIso">due_date_iso</a></code> | <code>str</code> | Due date as ISO `YYYY-MM-DD`; |
| <code><a href="#@cnab/core.BarcodeParams.property.freeField">free_field</a></code> | <code>str</code> | Bank-specific free field (campo livre), exactly 25 digits. |

---

##### `amount_cents`<sup>Required</sup> <a name="amount_cents" id="@cnab/core.BarcodeParams.property.amountCents"></a>

```python
amount_cents: str
```

- *Type:* str

Amount in cents, digits only, up to 10 digits (zero-padded to 10).

---

##### `bank_code`<sup>Required</sup> <a name="bank_code" id="@cnab/core.BarcodeParams.property.bankCode"></a>

```python
bank_code: str
```

- *Type:* str

Bank code, exactly 3 digits (e.g. `104`, `341`).

---

##### `currency_code`<sup>Required</sup> <a name="currency_code" id="@cnab/core.BarcodeParams.property.currencyCode"></a>

```python
currency_code: str
```

- *Type:* str

Currency code, exactly 1 digit (`9` = Real).

---

##### `due_date_iso`<sup>Required</sup> <a name="due_date_iso" id="@cnab/core.BarcodeParams.property.dueDateIso"></a>

```python
due_date_iso: str
```

- *Type:* str

Due date as ISO `YYYY-MM-DD`;

encoded as the 4-digit fator de vencimento.

---

##### `free_field`<sup>Required</sup> <a name="free_field" id="@cnab/core.BarcodeParams.property.freeField"></a>

```python
free_field: str
```

- *Type:* str

Bank-specific free field (campo livre), exactly 25 digits.

---

### BrCodeFields <a name="BrCodeFields" id="@cnab/core.BrCodeFields"></a>

Decoded result of {@link BrCode.decode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeFields.Initializer"></a>

```python
import cnab_core

cnab_core.BrCodeFields(
  amount: str,
  crc: str,
  crc_valid: bool,
  description: str,
  merchant_city: str,
  merchant_name: str,
  pix_key: str,
  txid: str
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeFields.property.amount">amount</a></code> | <code>str</code> | Empty string when the payload carries no amount. |
| <code><a href="#@cnab/core.BrCodeFields.property.crc">crc</a></code> | <code>str</code> | The 4 hex characters found in tag 63. |
| <code><a href="#@cnab/core.BrCodeFields.property.crcValid">crc_valid</a></code> | <code>bool</code> | Whether the payload's own CRC matches a recomputation. |
| <code><a href="#@cnab/core.BrCodeFields.property.description">description</a></code> | <code>str</code> | Empty string when tag 26 carries no description. |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantCity">merchant_city</a></code> | <code>str</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantName">merchant_name</a></code> | <code>str</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.pixKey">pix_key</a></code> | <code>str</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.txid">txid</a></code> | <code>str</code> | *No description.* |

---

##### `amount`<sup>Required</sup> <a name="amount" id="@cnab/core.BrCodeFields.property.amount"></a>

```python
amount: str
```

- *Type:* str

Empty string when the payload carries no amount.

---

##### `crc`<sup>Required</sup> <a name="crc" id="@cnab/core.BrCodeFields.property.crc"></a>

```python
crc: str
```

- *Type:* str

The 4 hex characters found in tag 63.

---

##### `crc_valid`<sup>Required</sup> <a name="crc_valid" id="@cnab/core.BrCodeFields.property.crcValid"></a>

```python
crc_valid: bool
```

- *Type:* bool

Whether the payload's own CRC matches a recomputation.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.BrCodeFields.property.description"></a>

```python
description: str
```

- *Type:* str

Empty string when tag 26 carries no description.

---

##### `merchant_city`<sup>Required</sup> <a name="merchant_city" id="@cnab/core.BrCodeFields.property.merchantCity"></a>

```python
merchant_city: str
```

- *Type:* str

---

##### `merchant_name`<sup>Required</sup> <a name="merchant_name" id="@cnab/core.BrCodeFields.property.merchantName"></a>

```python
merchant_name: str
```

- *Type:* str

---

##### `pix_key`<sup>Required</sup> <a name="pix_key" id="@cnab/core.BrCodeFields.property.pixKey"></a>

```python
pix_key: str
```

- *Type:* str

---

##### `txid`<sup>Required</sup> <a name="txid" id="@cnab/core.BrCodeFields.property.txid"></a>

```python
txid: str
```

- *Type:* str

---

### BrCodeParams <a name="BrCodeParams" id="@cnab/core.BrCodeParams"></a>

Inputs for {@link BrCode.encode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeParams.Initializer"></a>

```python
import cnab_core

cnab_core.BrCodeParams(
  merchant_city: str,
  merchant_name: str,
  pix_key: str,
  amount: str = None,
  description: str = None,
  single_use: bool = None,
  txid: str = None
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantCity">merchant_city</a></code> | <code>str</code> | Beneficiary city. |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantName">merchant_name</a></code> | <code>str</code> | Beneficiary name. |
| <code><a href="#@cnab/core.BrCodeParams.property.pixKey">pix_key</a></code> | <code>str</code> | PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key. |
| <code><a href="#@cnab/core.BrCodeParams.property.amount">amount</a></code> | <code>str</code> | Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose. |
| <code><a href="#@cnab/core.BrCodeParams.property.description">description</a></code> | <code>str</code> | Optional free-text description carried inside tag 26. |
| <code><a href="#@cnab/core.BrCodeParams.property.singleUse">single_use</a></code> | <code>bool</code> | `true` marks the code single-use (initiation method `12`). |
| <code><a href="#@cnab/core.BrCodeParams.property.txid">txid</a></code> | <code>str</code> | Transaction id. |

---

##### `merchant_city`<sup>Required</sup> <a name="merchant_city" id="@cnab/core.BrCodeParams.property.merchantCity"></a>

```python
merchant_city: str
```

- *Type:* str

Beneficiary city.

Truncated to 15 characters after sanitising.

---

##### `merchant_name`<sup>Required</sup> <a name="merchant_name" id="@cnab/core.BrCodeParams.property.merchantName"></a>

```python
merchant_name: str
```

- *Type:* str

Beneficiary name.

Truncated to 25 characters after sanitising.

---

##### `pix_key`<sup>Required</sup> <a name="pix_key" id="@cnab/core.BrCodeParams.property.pixKey"></a>

```python
pix_key: str
```

- *Type:* str

PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key.

---

##### `amount`<sup>Optional</sup> <a name="amount" id="@cnab/core.BrCodeParams.property.amount"></a>

```python
amount: str
```

- *Type:* str

Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose.

---

##### `description`<sup>Optional</sup> <a name="description" id="@cnab/core.BrCodeParams.property.description"></a>

```python
description: str
```

- *Type:* str

Optional free-text description carried inside tag 26.

---

##### `single_use`<sup>Optional</sup> <a name="single_use" id="@cnab/core.BrCodeParams.property.singleUse"></a>

```python
single_use: bool
```

- *Type:* bool

`true` marks the code single-use (initiation method `12`).

Reusable codes
omit the tag entirely, which is what the BACEN static examples do.

---

##### `txid`<sup>Optional</sup> <a name="txid" id="@cnab/core.BrCodeParams.property.txid"></a>

```python
txid: str
```

- *Type:* str

Transaction id.

Defaults to `"***"`, which means "not specified".
Alphanumeric, at most 25 characters.

---

### DetectedScope <a name="DetectedScope" id="@cnab/core.DetectedScope"></a>

The scope of a CNAB file inferred from its content (see `CnabFile.detectScope`).

#### Initializer <a name="Initializer" id="@cnab/core.DetectedScope.Initializer"></a>

```python
import cnab_core

cnab_core.DetectedScope(
  bank: str,
  direction: str,
  layout: str,
  variant: str
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.DetectedScope.property.bank">bank</a></code> | <code>str</code> | Detected bank code, e.g. `104`. |
| <code><a href="#@cnab/core.DetectedScope.property.direction">direction</a></code> | <code>str</code> | Detected direction, `remessa` or `retorno`. |
| <code><a href="#@cnab/core.DetectedScope.property.layout">layout</a></code> | <code>str</code> | Detected layout family, `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.DetectedScope.property.variant">variant</a></code> | <code>str</code> | Detected variant, e.g. `sigcb` (empty when the bank has none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.DetectedScope.property.bank"></a>

```python
bank: str
```

- *Type:* str

Detected bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.DetectedScope.property.direction"></a>

```python
direction: str
```

- *Type:* str

Detected direction, `remessa` or `retorno`.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.DetectedScope.property.layout"></a>

```python
layout: str
```

- *Type:* str

Detected layout family, `cnab240` or `cnab400`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.DetectedScope.property.variant"></a>

```python
variant: str
```

- *Type:* str

Detected variant, e.g. `sigcb` (empty when the bank has none).

---

### FieldSpec <a name="FieldSpec" id="@cnab/core.FieldSpec"></a>

Specification of a single positioned field within a record.

#### Initializer <a name="Initializer" id="@cnab/core.FieldSpec.Initializer"></a>

```python
import cnab_core

cnab_core.FieldSpec(
  date_format: str,
  decimals: typing.Union[int, float],
  default_value: str,
  description: str,
  end: typing.Union[int, float],
  field_type: FieldType,
  name: str,
  start: typing.Union[int, float]
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.FieldSpec.property.dateFormat">date_format</a></code> | <code>str</code> | Language-neutral date format token (empty when not a date field). |
| <code><a href="#@cnab/core.FieldSpec.property.decimals">decimals</a></code> | <code>typing.Union[int, float]</code> | Number of implied decimal places (0 when not a decimal field). |
| <code><a href="#@cnab/core.FieldSpec.property.defaultValue">default_value</a></code> | <code>str</code> | Default value applied by `build` when no value is supplied. |
| <code><a href="#@cnab/core.FieldSpec.property.description">description</a></code> | <code>str</code> | Short human description. |
| <code><a href="#@cnab/core.FieldSpec.property.end">end</a></code> | <code>typing.Union[int, float]</code> | 1-based end position, inclusive. |
| <code><a href="#@cnab/core.FieldSpec.property.fieldType">field_type</a></code> | <code><a href="#@cnab/core.FieldType">FieldType</a></code> | Field type / padding behaviour. |
| <code><a href="#@cnab/core.FieldSpec.property.name">name</a></code> | <code>str</code> | Canonical field name (the key used by `parse`/`build`). |
| <code><a href="#@cnab/core.FieldSpec.property.start">start</a></code> | <code>typing.Union[int, float]</code> | 1-based start position, inclusive. |

---

##### `date_format`<sup>Required</sup> <a name="date_format" id="@cnab/core.FieldSpec.property.dateFormat"></a>

```python
date_format: str
```

- *Type:* str

Language-neutral date format token (empty when not a date field).

---

##### `decimals`<sup>Required</sup> <a name="decimals" id="@cnab/core.FieldSpec.property.decimals"></a>

```python
decimals: typing.Union[int, float]
```

- *Type:* typing.Union[int, float]

Number of implied decimal places (0 when not a decimal field).

---

##### `default_value`<sup>Required</sup> <a name="default_value" id="@cnab/core.FieldSpec.property.defaultValue"></a>

```python
default_value: str
```

- *Type:* str

Default value applied by `build` when no value is supplied.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.FieldSpec.property.description"></a>

```python
description: str
```

- *Type:* str

Short human description.

---

##### `end`<sup>Required</sup> <a name="end" id="@cnab/core.FieldSpec.property.end"></a>

```python
end: typing.Union[int, float]
```

- *Type:* typing.Union[int, float]

1-based end position, inclusive.

---

##### `field_type`<sup>Required</sup> <a name="field_type" id="@cnab/core.FieldSpec.property.fieldType"></a>

```python
field_type: FieldType
```

- *Type:* <a href="#@cnab/core.FieldType">FieldType</a>

Field type / padding behaviour.

---

##### `name`<sup>Required</sup> <a name="name" id="@cnab/core.FieldSpec.property.name"></a>

```python
name: str
```

- *Type:* str

Canonical field name (the key used by `parse`/`build`).

---

##### `start`<sup>Required</sup> <a name="start" id="@cnab/core.FieldSpec.property.start"></a>

```python
start: typing.Union[int, float]
```

- *Type:* typing.Union[int, float]

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

```python
import cnab_core

cnab_core.LineOptions(
  strip_non_digits: bool,
  truncate_oversized: bool
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.LineOptions.property.stripNonDigits">strip_non_digits</a></code> | <code>bool</code> | When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input. |
| <code><a href="#@cnab/core.LineOptions.property.truncateOversized">truncate_oversized</a></code> | <code>bool</code> | When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`). |

---

##### `strip_non_digits`<sup>Required</sup> <a name="strip_non_digits" id="@cnab/core.LineOptions.property.stripNonDigits"></a>

```python
strip_non_digits: bool
```

- *Type:* bool

When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input.

---

##### `truncate_oversized`<sup>Required</sup> <a name="truncate_oversized" id="@cnab/core.LineOptions.property.truncateOversized"></a>

```python
truncate_oversized: bool
```

- *Type:* bool

When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`).

---

### ParsedLine <a name="ParsedLine" id="@cnab/core.ParsedLine"></a>

One parsed line of a whole CNAB file.

#### Initializer <a name="Initializer" id="@cnab/core.ParsedLine.Initializer"></a>

```python
import cnab_core

cnab_core.ParsedLine(
  fields: typing.Mapping[str],
  record_key: str,
  segment: str,
  tipo: str
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ParsedLine.property.fields">fields</a></code> | <code>typing.Mapping[str]</code> | Parsed field values (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.recordKey">record_key</a></code> | <code>str</code> | Detected record key (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.segment">segment</a></code> | <code>str</code> | The segment code for CNAB240 detail lines (empty otherwise). |
| <code><a href="#@cnab/core.ParsedLine.property.tipo">tipo</a></code> | <code>str</code> | The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1). |

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.ParsedLine.property.fields"></a>

```python
fields: typing.Mapping[str]
```

- *Type:* typing.Mapping[str]

Parsed field values (empty when the line could not be classified).

---

##### `record_key`<sup>Required</sup> <a name="record_key" id="@cnab/core.ParsedLine.property.recordKey"></a>

```python
record_key: str
```

- *Type:* str

Detected record key (empty when the line could not be classified).

---

##### `segment`<sup>Required</sup> <a name="segment" id="@cnab/core.ParsedLine.property.segment"></a>

```python
segment: str
```

- *Type:* str

The segment code for CNAB240 detail lines (empty otherwise).

---

##### `tipo`<sup>Required</sup> <a name="tipo" id="@cnab/core.ParsedLine.property.tipo"></a>

```python
tipo: str
```

- *Type:* str

The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1).

---

### RecordSpec <a name="RecordSpec" id="@cnab/core.RecordSpec"></a>

Specification of a whole record (one full 240/400 line).

#### Initializer <a name="Initializer" id="@cnab/core.RecordSpec.Initializer"></a>

```python
import cnab_core

cnab_core.RecordSpec(
  bank: str,
  direction: str,
  fields: typing.List[FieldSpec],
  layout: str,
  line_length: typing.Union[int, float],
  record: str,
  variant: str
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.RecordSpec.property.bank">bank</a></code> | <code>str</code> | Bank code, e.g. `104`. |
| <code><a href="#@cnab/core.RecordSpec.property.direction">direction</a></code> | <code>str</code> | Optional direction, e.g. `remessa`/`retorno` (empty when none). |
| <code><a href="#@cnab/core.RecordSpec.property.fields">fields</a></code> | <code>typing.List[<a href="#@cnab/core.FieldSpec">FieldSpec</a>]</code> | All fields, ordered by position. |
| <code><a href="#@cnab/core.RecordSpec.property.layout">layout</a></code> | <code>str</code> | Layout family, e.g. `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.RecordSpec.property.lineLength">line_length</a></code> | <code>typing.Union[int, float]</code> | Total line length (240 or 400). |
| <code><a href="#@cnab/core.RecordSpec.property.record">record</a></code> | <code>str</code> | Record name, e.g. `header_arquivo`. |
| <code><a href="#@cnab/core.RecordSpec.property.variant">variant</a></code> | <code>str</code> | Optional variant, e.g. `sigcb` (empty when none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.RecordSpec.property.bank"></a>

```python
bank: str
```

- *Type:* str

Bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.RecordSpec.property.direction"></a>

```python
direction: str
```

- *Type:* str

Optional direction, e.g. `remessa`/`retorno` (empty when none).

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.RecordSpec.property.fields"></a>

```python
fields: typing.List[FieldSpec]
```

- *Type:* typing.List[<a href="#@cnab/core.FieldSpec">FieldSpec</a>]

All fields, ordered by position.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.RecordSpec.property.layout"></a>

```python
layout: str
```

- *Type:* str

Layout family, e.g. `cnab240` or `cnab400`.

---

##### `line_length`<sup>Required</sup> <a name="line_length" id="@cnab/core.RecordSpec.property.lineLength"></a>

```python
line_length: typing.Union[int, float]
```

- *Type:* typing.Union[int, float]

Total line length (240 or 400).

---

##### `record`<sup>Required</sup> <a name="record" id="@cnab/core.RecordSpec.property.record"></a>

```python
record: str
```

- *Type:* str

Record name, e.g. `header_arquivo`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.RecordSpec.property.variant"></a>

```python
variant: str
```

- *Type:* str

Optional variant, e.g. `sigcb` (empty when none).

---

### ValidationResult <a name="ValidationResult" id="@cnab/core.ValidationResult"></a>

Outcome of validating a line against a record spec.

#### Initializer <a name="Initializer" id="@cnab/core.ValidationResult.Initializer"></a>

```python
import cnab_core

cnab_core.ValidationResult(
  errors: typing.List[str],
  valid: bool
)
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ValidationResult.property.errors">errors</a></code> | <code>typing.List[str]</code> | Human-readable problems (empty when valid). |
| <code><a href="#@cnab/core.ValidationResult.property.valid">valid</a></code> | <code>bool</code> | True when no problems were found. |

---

##### `errors`<sup>Required</sup> <a name="errors" id="@cnab/core.ValidationResult.property.errors"></a>

```python
errors: typing.List[str]
```

- *Type:* typing.List[str]

Human-readable problems (empty when valid).

---

##### `valid`<sup>Required</sup> <a name="valid" id="@cnab/core.ValidationResult.property.valid"></a>

```python
valid: bool
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
| <code><a href="#@cnab/core.Boleto.barcode">barcode</a></code> | Compose the 44-digit FEBRABAN cobrança barcode. |
| <code><a href="#@cnab/core.Boleto.barcodeCheckDigit">barcode_check_digit</a></code> | Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44). |
| <code><a href="#@cnab/core.Boleto.fatorVencimento">fator_vencimento</a></code> | Compute the 4-digit *fator de vencimento* for a due date. |
| <code><a href="#@cnab/core.Boleto.isValidBarcode">is_valid_barcode</a></code> | Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit. |
| <code><a href="#@cnab/core.Boleto.linhaDigitavel">linha_digitavel</a></code> | Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces). |
| <code><a href="#@cnab/core.Boleto.linhaDigitavelFormatted">linha_digitavel_formatted</a></code> | The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`. |
| <code><a href="#@cnab/core.Boleto.parseLinhaDigitavel">parse_linha_digitavel</a></code> | Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode. |

---

##### `barcode` <a name="barcode" id="@cnab/core.Boleto.barcode"></a>

```python
import cnab_core

cnab_core.Boleto.barcode(
  amount_cents: str,
  bank_code: str,
  currency_code: str,
  due_date_iso: str,
  free_field: str
)
```

Compose the 44-digit FEBRABAN cobrança barcode.

The general check digit (position 5) is computed with
`Modulo.mod11Boleto` over the other 43 digits.

###### `amount_cents`<sup>Required</sup> <a name="amount_cents" id="@cnab/core.Boleto.barcode.parameter.amountCents"></a>

- *Type:* str

Amount in cents, digits only, up to 10 digits (zero-padded to 10).

---

###### `bank_code`<sup>Required</sup> <a name="bank_code" id="@cnab/core.Boleto.barcode.parameter.bankCode"></a>

- *Type:* str

Bank code, exactly 3 digits (e.g. `104`, `341`).

---

###### `currency_code`<sup>Required</sup> <a name="currency_code" id="@cnab/core.Boleto.barcode.parameter.currencyCode"></a>

- *Type:* str

Currency code, exactly 1 digit (`9` = Real).

---

###### `due_date_iso`<sup>Required</sup> <a name="due_date_iso" id="@cnab/core.Boleto.barcode.parameter.dueDateIso"></a>

- *Type:* str

Due date as ISO `YYYY-MM-DD`;

encoded as the 4-digit fator de vencimento.

---

###### `free_field`<sup>Required</sup> <a name="free_field" id="@cnab/core.Boleto.barcode.parameter.freeField"></a>

- *Type:* str

Bank-specific free field (campo livre), exactly 25 digits.

---

##### `barcode_check_digit` <a name="barcode_check_digit" id="@cnab/core.Boleto.barcodeCheckDigit"></a>

```python
import cnab_core

cnab_core.Boleto.barcode_check_digit(
  barcode: str
)
```

Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44).

Does not require the stored
DV (position 5) to be correct.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.barcodeCheckDigit.parameter.barcode"></a>

- *Type:* str

the 44-digit barcode.

---

##### `fator_vencimento` <a name="fator_vencimento" id="@cnab/core.Boleto.fatorVencimento"></a>

```python
import cnab_core

cnab_core.Boleto.fator_vencimento(
  date_iso: str
)
```

Compute the 4-digit *fator de vencimento* for a due date.

The factor counts days since the FEBRABAN base date 1997-10-07
(1997-10-08 → `0001`). After the counter reached 9999 on 2025-02-21,
FEBRABAN restarted it at 1000 on 2025-02-22; factors keep cycling in
the 1000-9999 window: `factor > 9999 → ((factor - 1000) % 9000) + 1000`.

All arithmetic is done in UTC to avoid timezone off-by-one errors.

###### `date_iso`<sup>Required</sup> <a name="date_iso" id="@cnab/core.Boleto.fatorVencimento.parameter.dateIso"></a>

- *Type:* str

due date as ISO `YYYY-MM-DD`.

---

##### `is_valid_barcode` <a name="is_valid_barcode" id="@cnab/core.Boleto.isValidBarcode"></a>

```python
import cnab_core

cnab_core.Boleto.is_valid_barcode(
  barcode: str
)
```

Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.isValidBarcode.parameter.barcode"></a>

- *Type:* str

---

##### `linha_digitavel` <a name="linha_digitavel" id="@cnab/core.Boleto.linhaDigitavel"></a>

```python
import cnab_core

cnab_core.Boleto.linha_digitavel(
  barcode: str
)
```

Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces).

Field layout (barcode positions are 1-based):

* field 1 (10 digits): barcode 1-4 + 20-24 + módulo-10 DV
* field 2 (11 digits): barcode 25-34 + módulo-10 DV
* field 3 (11 digits): barcode 35-44 + módulo-10 DV
* field 4 (1 digit): the barcode general DV (position 5)
* field 5 (14 digits): barcode 6-19 (fator de vencimento + amount)

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavel.parameter.barcode"></a>

- *Type:* str

the 44-digit barcode.

---

##### `linha_digitavel_formatted` <a name="linha_digitavel_formatted" id="@cnab/core.Boleto.linhaDigitavelFormatted"></a>

```python
import cnab_core

cnab_core.Boleto.linha_digitavel_formatted(
  barcode: str
)
```

The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavelFormatted.parameter.barcode"></a>

- *Type:* str

the 44-digit barcode.

---

##### `parse_linha_digitavel` <a name="parse_linha_digitavel" id="@cnab/core.Boleto.parseLinhaDigitavel"></a>

```python
import cnab_core

cnab_core.Boleto.parse_linha_digitavel(
  linha: str
)
```

Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode.

Validates the three módulo-10 field DVs and the reconstructed barcode's
general módulo-11 DV; throws with a clear message on any mismatch.

###### `linha`<sup>Required</sup> <a name="linha" id="@cnab/core.Boleto.parseLinhaDigitavel.parameter.linha"></a>

- *Type:* str

the linha digitável, plain or formatted.

---



### BrCode <a name="BrCode" id="@cnab/core.BrCode"></a>

Build, parse and verify the PIX BR Code payload.

```python
# Example automatically generated from non-compiling source. May contain errors.
payload = BrCode.encode(
    pix_key="fulano@example.com",
    merchant_name="FULANO DE TAL",
    merchant_city="BRASILIA",
    amount="10.00"
)
BrCode.is_valid(payload) # true
BrCode.decode(payload).pix_key
```

#### Initializers <a name="Initializers" id="@cnab/core.BrCode.Initializer"></a>

```python
import cnab_core

cnab_core.BrCode()
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
| <code><a href="#@cnab/core.BrCode.isValid">is_valid</a></code> | `true` when the payload's trailing CRC matches a recomputation over everything before it. |

---

##### `crc16` <a name="crc16" id="@cnab/core.BrCode.crc16"></a>

```python
import cnab_core

cnab_core.BrCode.crc16(
  payload: str
)
```

CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded.

Canonical check: `crc16("123456789") === "29B1"`.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.crc16.parameter.payload"></a>

- *Type:* str

---

##### `decode` <a name="decode" id="@cnab/core.BrCode.decode"></a>

```python
import cnab_core

cnab_core.BrCode.decode(
  payload: str
)
```

Decode a BR Code payload into its fields, reporting CRC validity.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.decode.parameter.payload"></a>

- *Type:* str

---

##### `encode` <a name="encode" id="@cnab/core.BrCode.encode"></a>

```python
import cnab_core

cnab_core.BrCode.encode(
  merchant_city: str,
  merchant_name: str,
  pix_key: str,
  amount: str = None,
  description: str = None,
  single_use: bool = None,
  txid: str = None
)
```

Build a BR Code payload, CRC included.

###### `merchant_city`<sup>Required</sup> <a name="merchant_city" id="@cnab/core.BrCode.encode.parameter.merchantCity"></a>

- *Type:* str

Beneficiary city.

Truncated to 15 characters after sanitising.

---

###### `merchant_name`<sup>Required</sup> <a name="merchant_name" id="@cnab/core.BrCode.encode.parameter.merchantName"></a>

- *Type:* str

Beneficiary name.

Truncated to 25 characters after sanitising.

---

###### `pix_key`<sup>Required</sup> <a name="pix_key" id="@cnab/core.BrCode.encode.parameter.pixKey"></a>

- *Type:* str

PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key.

---

###### `amount`<sup>Optional</sup> <a name="amount" id="@cnab/core.BrCode.encode.parameter.amount"></a>

- *Type:* str

Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose.

---

###### `description`<sup>Optional</sup> <a name="description" id="@cnab/core.BrCode.encode.parameter.description"></a>

- *Type:* str

Optional free-text description carried inside tag 26.

---

###### `single_use`<sup>Optional</sup> <a name="single_use" id="@cnab/core.BrCode.encode.parameter.singleUse"></a>

- *Type:* bool

`true` marks the code single-use (initiation method `12`).

Reusable codes
omit the tag entirely, which is what the BACEN static examples do.

---

###### `txid`<sup>Optional</sup> <a name="txid" id="@cnab/core.BrCode.encode.parameter.txid"></a>

- *Type:* str

Transaction id.

Defaults to `"***"`, which means "not specified".
Alphanumeric, at most 25 characters.

---

##### `is_valid` <a name="is_valid" id="@cnab/core.BrCode.isValid"></a>

```python
import cnab_core

cnab_core.BrCode.is_valid(
  payload: str
)
```

`true` when the payload's trailing CRC matches a recomputation over everything before it.

Returns `false` rather than throwing for anything
that is not a well-formed payload — callers use this as a predicate.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.isValid.parameter.payload"></a>

- *Type:* str

---



### CnabFile <a name="CnabFile" id="@cnab/core.CnabFile"></a>

Parses a whole CNAB file (many lines of mixed record types) by detecting each line's record type from its discriminator positions and dispatching to the matching record spec.

Scope it to one bank/variant/direction with `forBank`.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.parse">parse</a></code> | Parse a whole file's content into one `ParsedLine` per non-empty line. |

---

##### `parse` <a name="parse" id="@cnab/core.CnabFile.parse"></a>

```python
def parse(
  content: str
) -> typing.List[ParsedLine]
```

Parse a whole file's content into one `ParsedLine` per non-empty line.

A leading UTF-8 BOM (U+FEFF) is ignored, and both LF and CRLF line endings
are accepted.

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.parse.parameter.content"></a>

- *Type:* str

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFile.detect">detect</a></code> | Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it. |
| <code><a href="#@cnab/core.CnabFile.detectScope">detect_scope</a></code> | Infer a file's scope (layout / bank / variant / direction) from its first line (the header_arquivo):. |
| <code><a href="#@cnab/core.CnabFile.forBank">for_bank</a></code> | Build a file parser scoped to the records of one bank (and optional variant / direction). |
| <code><a href="#@cnab/core.CnabFile.forBankBundled">for_bank_bundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `detect` <a name="detect" id="@cnab/core.CnabFile.detect"></a>

```python
import cnab_core

cnab_core.CnabFile.detect(
  spec_json: str,
  content: str
)
```

Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it.

Throws the same errors as `detectScope`
when the content cannot be identified.

###### `spec_json`<sup>Required</sup> <a name="spec_json" id="@cnab/core.CnabFile.detect.parameter.specJson"></a>

- *Type:* str

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detect.parameter.content"></a>

- *Type:* str

---

##### `detect_scope` <a name="detect_scope" id="@cnab/core.CnabFile.detectScope"></a>

```python
import cnab_core

cnab_core.CnabFile.detect_scope(
  spec_json: str,
  content: str
)
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

###### `spec_json`<sup>Required</sup> <a name="spec_json" id="@cnab/core.CnabFile.detectScope.parameter.specJson"></a>

- *Type:* str

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detectScope.parameter.content"></a>

- *Type:* str

---

##### `for_bank` <a name="for_bank" id="@cnab/core.CnabFile.forBank"></a>

```python
import cnab_core

cnab_core.CnabFile.for_bank(
  spec_json: str,
  layout: str,
  bank: str,
  variant: str,
  direction: str
)
```

Build a file parser scoped to the records of one bank (and optional variant / direction).

`variant` and `direction` may be empty strings.

###### `spec_json`<sup>Required</sup> <a name="spec_json" id="@cnab/core.CnabFile.forBank.parameter.specJson"></a>

- *Type:* str

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBank.parameter.layout"></a>

- *Type:* str

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBank.parameter.bank"></a>

- *Type:* str

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBank.parameter.variant"></a>

- *Type:* str

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBank.parameter.direction"></a>

- *Type:* str

---

##### `for_bank_bundled` <a name="for_bank_bundled" id="@cnab/core.CnabFile.forBankBundled"></a>

```python
import cnab_core

cnab_core.CnabFile.for_bank_bundled(
  layout: str,
  bank: str,
  variant: str,
  direction: str
)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBankBundled.parameter.layout"></a>

- *Type:* str

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBankBundled.parameter.bank"></a>

- *Type:* str

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBankBundled.parameter.variant"></a>

- *Type:* str

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBankBundled.parameter.direction"></a>

- *Type:* str

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
| <code><a href="#@cnab/core.CnabFileBuilder.addDetail">add_detail</a></code> | Append a detail line. |
| <code><a href="#@cnab/core.CnabFileBuilder.endLote">end_lote</a></code> | CNAB240 only: close the open lote with the given `trailer_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.startLote">start_lote</a></code> | CNAB240 only: begin a new lote with the given `header_lote` values. |
| <code><a href="#@cnab/core.CnabFileBuilder.toFileContent">to_file_content</a></code> | Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline). |
| <code><a href="#@cnab/core.CnabFileBuilder.withHeader">with_header</a></code> | Set the values for the `header_arquivo` record. |

---

##### `add_detail` <a name="add_detail" id="@cnab/core.CnabFileBuilder.addDetail"></a>

```python
def add_detail(
  record_name: str,
  values: typing.Mapping[str]
) -> None
```

Append a detail line.

`recordName` is the record's short name in scope,
e.g. `detalhe_segmento_p` (CNAB240) or `detalhe` (CNAB400). Throws when
the name is unknown in this scope or (CNAB240) when no lote is open.

###### `record_name`<sup>Required</sup> <a name="record_name" id="@cnab/core.CnabFileBuilder.addDetail.parameter.recordName"></a>

- *Type:* str

---

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.addDetail.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

##### `end_lote` <a name="end_lote" id="@cnab/core.CnabFileBuilder.endLote"></a>

```python
def end_lote(
  trailer_values: typing.Mapping[str]
) -> None
```

CNAB240 only: close the open lote with the given `trailer_lote` values.

The lote's `qtde_registro_lote` (header_lote + details + trailer_lote) is
auto-computed unless supplied here.

###### `trailer_values`<sup>Required</sup> <a name="trailer_values" id="@cnab/core.CnabFileBuilder.endLote.parameter.trailerValues"></a>

- *Type:* typing.Mapping[str]

---

##### `start_lote` <a name="start_lote" id="@cnab/core.CnabFileBuilder.startLote"></a>

```python
def start_lote(
  header_values: typing.Mapping[str]
) -> None
```

CNAB240 only: begin a new lote with the given `header_lote` values.

Throws for CNAB400 (which has no lotes) and when a lote is already open.

###### `header_values`<sup>Required</sup> <a name="header_values" id="@cnab/core.CnabFileBuilder.startLote.parameter.headerValues"></a>

- *Type:* typing.Mapping[str]

---

##### `to_file_content` <a name="to_file_content" id="@cnab/core.CnabFileBuilder.toFileContent"></a>

```python
def to_file_content(
  trailer_values: typing.Mapping[str]
) -> str
```

Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline).

Control fields are auto-computed
per layout (see ADR 0007); user-supplied counter/total values win, pure
sequence counters are always builder-owned.

###### `trailer_values`<sup>Required</sup> <a name="trailer_values" id="@cnab/core.CnabFileBuilder.toFileContent.parameter.trailerValues"></a>

- *Type:* typing.Mapping[str]

---

##### `with_header` <a name="with_header" id="@cnab/core.CnabFileBuilder.withHeader"></a>

```python
def with_header(
  values: typing.Mapping[str]
) -> None
```

Set the values for the `header_arquivo` record.

(Named `withHeader`
rather than `setHeader` because jsii prohibits `setXxx` method names —
they conflict with Java property setters.)

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.withHeader.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFileBuilder.forBank">for_bank</a></code> | Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings. |
| <code><a href="#@cnab/core.CnabFileBuilder.forBankBundled">for_bank_bundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `for_bank` <a name="for_bank" id="@cnab/core.CnabFileBuilder.forBank"></a>

```python
import cnab_core

cnab_core.CnabFileBuilder.for_bank(
  spec_json: str,
  layout: str,
  bank: str,
  variant: str,
  direction: str
)
```

Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings.

###### `spec_json`<sup>Required</sup> <a name="spec_json" id="@cnab/core.CnabFileBuilder.forBank.parameter.specJson"></a>

- *Type:* str

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBank.parameter.layout"></a>

- *Type:* str

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBank.parameter.bank"></a>

- *Type:* str

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBank.parameter.variant"></a>

- *Type:* str

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBank.parameter.direction"></a>

- *Type:* str

---

##### `for_bank_bundled` <a name="for_bank_bundled" id="@cnab/core.CnabFileBuilder.forBankBundled"></a>

```python
import cnab_core

cnab_core.CnabFileBuilder.for_bank_bundled(
  layout: str,
  bank: str,
  variant: str,
  direction: str
)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.layout"></a>

- *Type:* str

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.bank"></a>

- *Type:* str

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.variant"></a>

- *Type:* str

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.direction"></a>

- *Type:* str

---



### CnabRecord <a name="CnabRecord" id="@cnab/core.CnabRecord"></a>

A single CNAB record spec with operations to `parse`, `build` and `validate` one fixed-width line.

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.getDateIso">get_date_iso</a></code> | Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069; |
| <code><a href="#@cnab/core.CnabRecord.getDecimal">get_decimal</a></code> | Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged. |
| <code><a href="#@cnab/core.CnabRecord.parse">parse</a></code> | Parse a fixed-width line into a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.setDateIso">set_date_iso</a></code> | Set the value of a date/time field from an ISO string, the inverse of `getDateIso`:. |
| <code><a href="#@cnab/core.CnabRecord.setDecimal">set_decimal</a></code> | Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`). |
| <code><a href="#@cnab/core.CnabRecord.toLine">to_line</a></code> | Build a fixed-width line from a map of field name -> value. |
| <code><a href="#@cnab/core.CnabRecord.toLineWithOptions">to_line_with_options</a></code> | Same as `toLine`, but with explicit control over what happens to values that do not fit or are not digit strings (see `LineOptions`). |
| <code><a href="#@cnab/core.CnabRecord.validate">validate</a></code> | Validate a line against this record spec. |

---

##### `get_date_iso` <a name="get_date_iso" id="@cnab/core.CnabRecord.getDateIso"></a>

```python
def get_date_iso(
  values: typing.Mapping[str],
  name: str
) -> str
```

Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069;

see ADR 0006)

* `HHmmss`   -> `HH:mm:ss`

Returns `''` when the raw value is all zeros (CNAB's "unset" convention).
Throws when the field name is unknown, the field has no `dateFormat`, or
the stored value is not a digit string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDateIso.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDateIso.parameter.name"></a>

- *Type:* str

---

##### `get_decimal` <a name="get_decimal" id="@cnab/core.CnabRecord.getDecimal"></a>

```python
def get_decimal(
  values: typing.Mapping[str],
  name: str
) -> str
```

Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged.

Numeric values cross the API boundary as decimal strings — never floats —
so they stay exact, jsii-safe and language-neutral (see ADR 0006).

Throws when the field name is unknown or the stored value is not a digit
string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDecimal.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDecimal.parameter.name"></a>

- *Type:* str

---

##### `parse` <a name="parse" id="@cnab/core.CnabRecord.parse"></a>

```python
def parse(
  line: str
) -> typing.Mapping[str]
```

Parse a fixed-width line into a map of field name -> value.

Values are
normalized (alpha right-trimmed, numerics stripped of left padding) so that
`toLine(parse(line))` reproduces a well-formed line.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.parse.parameter.line"></a>

- *Type:* str

---

##### `set_date_iso` <a name="set_date_iso" id="@cnab/core.CnabRecord.setDateIso"></a>

```python
def set_date_iso(
  values: typing.Mapping[str],
  name: str,
  iso: str
) -> typing.Mapping[str]
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

```python
# Example automatically generated from non-compiling source. May contain errors.
values = record.set_date_iso(values, "vencimento", "2026-03-15")
```

Throws when the field name is unknown, the field has no `dateFormat`, or
the input is malformed (wrong shape, month/day/time component out of range).

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDateIso.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDateIso.parameter.name"></a>

- *Type:* str

---

###### `iso`<sup>Required</sup> <a name="iso" id="@cnab/core.CnabRecord.setDateIso.parameter.iso"></a>

- *Type:* str

---

##### `set_decimal` <a name="set_decimal" id="@cnab/core.CnabRecord.setDecimal"></a>

```python
def set_decimal(
  values: typing.Mapping[str],
  name: str,
  decimal_value: str
) -> typing.Mapping[str]
```

Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`).

Returns a **new map** with the field set; the input is not modified. It
cannot mutate: jsii marshals maps **by value**, so a mutation performed
here would be invisible to a Python/Java/.NET caller. This method used to
return `void` and mutate, which worked only in Node and silently did
nothing everywhere else.

```python
# Example automatically generated from non-compiling source. May contain errors.
values = record.set_decimal(values, "valor_titulo", "1500.00")
```

Throws when the field name is unknown, the value is not a well-formed
decimal string, or it carries more fraction digits than the field allows.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDecimal.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDecimal.parameter.name"></a>

- *Type:* str

---

###### `decimal_value`<sup>Required</sup> <a name="decimal_value" id="@cnab/core.CnabRecord.setDecimal.parameter.decimalValue"></a>

- *Type:* str

---

##### `to_line` <a name="to_line" id="@cnab/core.CnabRecord.toLine"></a>

```python
def to_line(
  values: typing.Mapping[str]
) -> str
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

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.toLine.parameter.values"></a>

- *Type:* typing.Mapping[str]

---

##### `to_line_with_options` <a name="to_line_with_options" id="@cnab/core.CnabRecord.toLineWithOptions"></a>

```python
def to_line_with_options(
  values: typing.Mapping[str],
  strip_non_digits: bool,
  truncate_oversized: bool
) -> str
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

- *Type:* typing.Mapping[str]

---

###### `strip_non_digits`<sup>Required</sup> <a name="strip_non_digits" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.stripNonDigits"></a>

- *Type:* bool

When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input.

---

###### `truncate_oversized`<sup>Required</sup> <a name="truncate_oversized" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.truncateOversized"></a>

- *Type:* bool

When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`).

---

##### `validate` <a name="validate" id="@cnab/core.CnabRecord.validate"></a>

```python
def validate(
  line: str
) -> ValidationResult
```

Validate a line against this record spec.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.validate.parameter.line"></a>

- *Type:* str

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.fromJson">from_json</a></code> | Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`). |

---

##### `from_json` <a name="from_json" id="@cnab/core.CnabRecord.fromJson"></a>

```python
import cnab_core

cnab_core.CnabRecord.from_json(
  json: str
)
```

Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`).

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabRecord.fromJson.parameter.json"></a>

- *Type:* str

---

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.CnabRecord.property.spec">spec</a></code> | <code><a href="#@cnab/core.RecordSpec">RecordSpec</a></code> | The underlying record specification. |

---

##### `spec`<sup>Required</sup> <a name="spec" id="@cnab/core.CnabRecord.property.spec"></a>

```python
spec: RecordSpec
```

- *Type:* <a href="#@cnab/core.RecordSpec">RecordSpec</a>

The underlying record specification.

---


### CnabSpec <a name="CnabSpec" id="@cnab/core.CnabSpec"></a>

A compiled spec: a collection of named records (whole `spec.json`).

#### Methods <a name="Methods" id="Methods"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.codeTableKeys">code_table_keys</a></code> | All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`. |
| <code><a href="#@cnab/core.CnabSpec.getCodeTable">get_code_table</a></code> | Get a code table (code -> description map) by key. |
| <code><a href="#@cnab/core.CnabSpec.getRecord">get_record</a></code> | Get a record by key. |
| <code><a href="#@cnab/core.CnabSpec.hasCodeTable">has_code_table</a></code> | Whether a code table with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.hasRecord">has_record</a></code> | Whether a record with the given key exists. |
| <code><a href="#@cnab/core.CnabSpec.lookupCode">lookup_code</a></code> | Look up a code's description in a table, or `''` when the code is unknown. |
| <code><a href="#@cnab/core.CnabSpec.recordKeys">record_keys</a></code> | All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`. |

---

##### `code_table_keys` <a name="code_table_keys" id="@cnab/core.CnabSpec.codeTableKeys"></a>

```python
def code_table_keys() -> typing.List[str]
```

All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`.

##### `get_code_table` <a name="get_code_table" id="@cnab/core.CnabSpec.getCodeTable"></a>

```python
def get_code_table(
  key: str
) -> typing.Mapping[str]
```

Get a code table (code -> description map) by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getCodeTable.parameter.key"></a>

- *Type:* str

---

##### `get_record` <a name="get_record" id="@cnab/core.CnabSpec.getRecord"></a>

```python
def get_record(
  key: str
) -> CnabRecord
```

Get a record by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getRecord.parameter.key"></a>

- *Type:* str

---

##### `has_code_table` <a name="has_code_table" id="@cnab/core.CnabSpec.hasCodeTable"></a>

```python
def has_code_table(
  key: str
) -> bool
```

Whether a code table with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasCodeTable.parameter.key"></a>

- *Type:* str

---

##### `has_record` <a name="has_record" id="@cnab/core.CnabSpec.hasRecord"></a>

```python
def has_record(
  key: str
) -> bool
```

Whether a record with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasRecord.parameter.key"></a>

- *Type:* str

---

##### `lookup_code` <a name="lookup_code" id="@cnab/core.CnabSpec.lookupCode"></a>

```python
def lookup_code(
  key: str,
  code: str
) -> str
```

Look up a code's description in a table, or `''` when the code is unknown.

The code is normalized during lookup: tried as-is, then with leading zeros
stripped (legacy tables use unpadded keys like `"2"` while CNAB fields
carry `"02"`), then zero-padded to 2 digits.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.lookupCode.parameter.key"></a>

- *Type:* str

---

###### `code`<sup>Required</sup> <a name="code" id="@cnab/core.CnabSpec.lookupCode.parameter.code"></a>

- *Type:* str

---

##### `record_keys` <a name="record_keys" id="@cnab/core.CnabSpec.recordKeys"></a>

```python
def record_keys() -> typing.List[str]
```

All available record keys, e.g. `cnab240/104/sigcb/header_arquivo`.

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabSpec.bundled">bundled</a></code> | The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve. |
| <code><a href="#@cnab/core.CnabSpec.bundledJson">bundled_json</a></code> | The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too. |
| <code><a href="#@cnab/core.CnabSpec.fromJson">from_json</a></code> | Load from the compiled `spec.json` content. |

---

##### `bundled` <a name="bundled" id="@cnab/core.CnabSpec.bundled"></a>

```python
import cnab_core

cnab_core.CnabSpec.bundled()
```

The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve.

This is the entry point for every non-Node language: a Python / Java /
.NET consumer installs the engine and immediately has the full catalog,
every record and every code table.

##### `bundled_json` <a name="bundled_json" id="@cnab/core.CnabSpec.bundledJson"></a>

```python
import cnab_core

cnab_core.CnabSpec.bundled_json()
```

The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too.

##### `from_json` <a name="from_json" id="@cnab/core.CnabSpec.fromJson"></a>

```python
import cnab_core

cnab_core.CnabSpec.from_json(
  json: str
)
```

Load from the compiled `spec.json` content.

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabSpec.fromJson.parameter.json"></a>

- *Type:* str

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
| <code><a href="#@cnab/core.Modulo.mod11Boleto">mod11_boleto</a></code> | FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5). |

---

##### `mod10` <a name="mod10" id="@cnab/core.Modulo.mod10"></a>

```python
import cnab_core

cnab_core.Modulo.mod10(
  digits: str
)
```

Módulo 10 (boleto / linha digitável field DV).

Rule: weights 2 and 1 alternate right-to-left starting with 2. Each
digit is multiplied by its weight; when a product exceeds 9 its decimal
digits are summed (e.g. 12 → 1 + 2 = 3). The DV is the amount needed to
reach the next multiple of 10: `(10 - (sum % 10)) % 10`.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod10.parameter.digits"></a>

- *Type:* str

numeric string (one or more digits).

---

##### `mod11` <a name="mod11" id="@cnab/core.Modulo.mod11"></a>

```python
import cnab_core

cnab_core.Modulo.mod11(
  digits: str
)
```

Generic CNAB módulo 11 (remessa/retorno field DVs).

Rule: weights 2, 3, ..., 9 cycle right-to-left. The DV is
`11 - (sum % 11)`; when that result is 0, 10 or 11 the DV is 0.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11.parameter.digits"></a>

- *Type:* str

numeric string (one or more digits).

---

##### `mod11_boleto` <a name="mod11_boleto" id="@cnab/core.Modulo.mod11Boleto"></a>

```python
import cnab_core

cnab_core.Modulo.mod11_boleto(
  digits: str
)
```

FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5).

Rule: same weighting as `mod11` (weights 2..9 cycling right-to-left),
but the DV is `11 - (sum % 11)` mapped so that a result of 0, 1, 10 or
11 becomes 1 (the barcode DV can never be 0).

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11Boleto.parameter.digits"></a>

- *Type:* str

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

