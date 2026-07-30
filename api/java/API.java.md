# API Reference <a name="API Reference" id="api-reference"></a>


## Structs <a name="Structs" id="Structs"></a>

### BarcodeParams <a name="BarcodeParams" id="@cnab/core.BarcodeParams"></a>

Parameters to compose a FEBRABAN cobrança barcode (44 digits).

#### Initializer <a name="Initializer" id="@cnab/core.BarcodeParams.Initializer"></a>

```java
import org.cnab.core.BarcodeParams;

BarcodeParams.builder()
    .amountCents(java.lang.String)
    .bankCode(java.lang.String)
    .currencyCode(java.lang.String)
    .dueDateIso(java.lang.String)
    .freeField(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BarcodeParams.property.amountCents">amountCents</a></code> | <code>java.lang.String</code> | Amount in cents, digits only, up to 10 digits (zero-padded to 10). |
| <code><a href="#@cnab/core.BarcodeParams.property.bankCode">bankCode</a></code> | <code>java.lang.String</code> | Bank code, exactly 3 digits (e.g. `104`, `341`). |
| <code><a href="#@cnab/core.BarcodeParams.property.currencyCode">currencyCode</a></code> | <code>java.lang.String</code> | Currency code, exactly 1 digit (`9` = Real). |
| <code><a href="#@cnab/core.BarcodeParams.property.dueDateIso">dueDateIso</a></code> | <code>java.lang.String</code> | Due date as ISO `YYYY-MM-DD`; |
| <code><a href="#@cnab/core.BarcodeParams.property.freeField">freeField</a></code> | <code>java.lang.String</code> | Bank-specific free field (campo livre), exactly 25 digits. |

---

##### `amountCents`<sup>Required</sup> <a name="amountCents" id="@cnab/core.BarcodeParams.property.amountCents"></a>

```java
public java.lang.String getAmountCents();
```

- *Type:* java.lang.String

Amount in cents, digits only, up to 10 digits (zero-padded to 10).

---

##### `bankCode`<sup>Required</sup> <a name="bankCode" id="@cnab/core.BarcodeParams.property.bankCode"></a>

```java
public java.lang.String getBankCode();
```

- *Type:* java.lang.String

Bank code, exactly 3 digits (e.g. `104`, `341`).

---

##### `currencyCode`<sup>Required</sup> <a name="currencyCode" id="@cnab/core.BarcodeParams.property.currencyCode"></a>

```java
public java.lang.String getCurrencyCode();
```

- *Type:* java.lang.String

Currency code, exactly 1 digit (`9` = Real).

---

##### `dueDateIso`<sup>Required</sup> <a name="dueDateIso" id="@cnab/core.BarcodeParams.property.dueDateIso"></a>

```java
public java.lang.String getDueDateIso();
```

- *Type:* java.lang.String

Due date as ISO `YYYY-MM-DD`;

encoded as the 4-digit fator de vencimento.

---

##### `freeField`<sup>Required</sup> <a name="freeField" id="@cnab/core.BarcodeParams.property.freeField"></a>

```java
public java.lang.String getFreeField();
```

- *Type:* java.lang.String

Bank-specific free field (campo livre), exactly 25 digits.

---

### BrCodeFields <a name="BrCodeFields" id="@cnab/core.BrCodeFields"></a>

Decoded result of {@link BrCode.decode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeFields.Initializer"></a>

```java
import org.cnab.core.BrCodeFields;

BrCodeFields.builder()
    .amount(java.lang.String)
    .crc(java.lang.String)
    .crcValid(java.lang.Boolean)
    .description(java.lang.String)
    .merchantCity(java.lang.String)
    .merchantName(java.lang.String)
    .pixKey(java.lang.String)
    .txid(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeFields.property.amount">amount</a></code> | <code>java.lang.String</code> | Empty string when the payload carries no amount. |
| <code><a href="#@cnab/core.BrCodeFields.property.crc">crc</a></code> | <code>java.lang.String</code> | The 4 hex characters found in tag 63. |
| <code><a href="#@cnab/core.BrCodeFields.property.crcValid">crcValid</a></code> | <code>java.lang.Boolean</code> | Whether the payload's own CRC matches a recomputation. |
| <code><a href="#@cnab/core.BrCodeFields.property.description">description</a></code> | <code>java.lang.String</code> | Empty string when tag 26 carries no description. |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantCity">merchantCity</a></code> | <code>java.lang.String</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.merchantName">merchantName</a></code> | <code>java.lang.String</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.pixKey">pixKey</a></code> | <code>java.lang.String</code> | *No description.* |
| <code><a href="#@cnab/core.BrCodeFields.property.txid">txid</a></code> | <code>java.lang.String</code> | *No description.* |

---

##### `amount`<sup>Required</sup> <a name="amount" id="@cnab/core.BrCodeFields.property.amount"></a>

```java
public java.lang.String getAmount();
```

- *Type:* java.lang.String

Empty string when the payload carries no amount.

---

##### `crc`<sup>Required</sup> <a name="crc" id="@cnab/core.BrCodeFields.property.crc"></a>

```java
public java.lang.String getCrc();
```

- *Type:* java.lang.String

The 4 hex characters found in tag 63.

---

##### `crcValid`<sup>Required</sup> <a name="crcValid" id="@cnab/core.BrCodeFields.property.crcValid"></a>

```java
public java.lang.Boolean getCrcValid();
```

- *Type:* java.lang.Boolean

Whether the payload's own CRC matches a recomputation.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.BrCodeFields.property.description"></a>

```java
public java.lang.String getDescription();
```

- *Type:* java.lang.String

Empty string when tag 26 carries no description.

---

##### `merchantCity`<sup>Required</sup> <a name="merchantCity" id="@cnab/core.BrCodeFields.property.merchantCity"></a>

```java
public java.lang.String getMerchantCity();
```

- *Type:* java.lang.String

---

##### `merchantName`<sup>Required</sup> <a name="merchantName" id="@cnab/core.BrCodeFields.property.merchantName"></a>

```java
public java.lang.String getMerchantName();
```

- *Type:* java.lang.String

---

##### `pixKey`<sup>Required</sup> <a name="pixKey" id="@cnab/core.BrCodeFields.property.pixKey"></a>

```java
public java.lang.String getPixKey();
```

- *Type:* java.lang.String

---

##### `txid`<sup>Required</sup> <a name="txid" id="@cnab/core.BrCodeFields.property.txid"></a>

```java
public java.lang.String getTxid();
```

- *Type:* java.lang.String

---

### BrCodeParams <a name="BrCodeParams" id="@cnab/core.BrCodeParams"></a>

Inputs for {@link BrCode.encode}.

#### Initializer <a name="Initializer" id="@cnab/core.BrCodeParams.Initializer"></a>

```java
import org.cnab.core.BrCodeParams;

BrCodeParams.builder()
    .merchantCity(java.lang.String)
    .merchantName(java.lang.String)
    .pixKey(java.lang.String)
//  .amount(java.lang.String)
//  .description(java.lang.String)
//  .singleUse(java.lang.Boolean)
//  .txid(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantCity">merchantCity</a></code> | <code>java.lang.String</code> | Beneficiary city. |
| <code><a href="#@cnab/core.BrCodeParams.property.merchantName">merchantName</a></code> | <code>java.lang.String</code> | Beneficiary name. |
| <code><a href="#@cnab/core.BrCodeParams.property.pixKey">pixKey</a></code> | <code>java.lang.String</code> | PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key. |
| <code><a href="#@cnab/core.BrCodeParams.property.amount">amount</a></code> | <code>java.lang.String</code> | Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose. |
| <code><a href="#@cnab/core.BrCodeParams.property.description">description</a></code> | <code>java.lang.String</code> | Optional free-text description carried inside tag 26. |
| <code><a href="#@cnab/core.BrCodeParams.property.singleUse">singleUse</a></code> | <code>java.lang.Boolean</code> | `true` marks the code single-use (initiation method `12`). |
| <code><a href="#@cnab/core.BrCodeParams.property.txid">txid</a></code> | <code>java.lang.String</code> | Transaction id. |

---

##### `merchantCity`<sup>Required</sup> <a name="merchantCity" id="@cnab/core.BrCodeParams.property.merchantCity"></a>

```java
public java.lang.String getMerchantCity();
```

- *Type:* java.lang.String

Beneficiary city.

Truncated to 15 characters after sanitising.

---

##### `merchantName`<sup>Required</sup> <a name="merchantName" id="@cnab/core.BrCodeParams.property.merchantName"></a>

```java
public java.lang.String getMerchantName();
```

- *Type:* java.lang.String

Beneficiary name.

Truncated to 25 characters after sanitising.

---

##### `pixKey`<sup>Required</sup> <a name="pixKey" id="@cnab/core.BrCodeParams.property.pixKey"></a>

```java
public java.lang.String getPixKey();
```

- *Type:* java.lang.String

PIX key: CPF/CNPJ, phone, e-mail, or a random (EVP) key.

---

##### `amount`<sup>Optional</sup> <a name="amount" id="@cnab/core.BrCodeParams.property.amount"></a>

```java
public java.lang.String getAmount();
```

- *Type:* java.lang.String

Amount as a **decimal string** with at most two fraction digits (`"10"`, `"10.5"`, `"1500.00"`). Omit or pass `""` to let the payer choose.

---

##### `description`<sup>Optional</sup> <a name="description" id="@cnab/core.BrCodeParams.property.description"></a>

```java
public java.lang.String getDescription();
```

- *Type:* java.lang.String

Optional free-text description carried inside tag 26.

---

##### `singleUse`<sup>Optional</sup> <a name="singleUse" id="@cnab/core.BrCodeParams.property.singleUse"></a>

```java
public java.lang.Boolean getSingleUse();
```

- *Type:* java.lang.Boolean

`true` marks the code single-use (initiation method `12`).

Reusable codes
omit the tag entirely, which is what the BACEN static examples do.

---

##### `txid`<sup>Optional</sup> <a name="txid" id="@cnab/core.BrCodeParams.property.txid"></a>

```java
public java.lang.String getTxid();
```

- *Type:* java.lang.String

Transaction id.

Defaults to `"***"`, which means "not specified".
Alphanumeric, at most 25 characters.

---

### DetectedScope <a name="DetectedScope" id="@cnab/core.DetectedScope"></a>

The scope of a CNAB file inferred from its content (see `CnabFile.detectScope`).

#### Initializer <a name="Initializer" id="@cnab/core.DetectedScope.Initializer"></a>

```java
import org.cnab.core.DetectedScope;

DetectedScope.builder()
    .bank(java.lang.String)
    .direction(java.lang.String)
    .layout(java.lang.String)
    .variant(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.DetectedScope.property.bank">bank</a></code> | <code>java.lang.String</code> | Detected bank code, e.g. `104`. |
| <code><a href="#@cnab/core.DetectedScope.property.direction">direction</a></code> | <code>java.lang.String</code> | Detected direction, `remessa` or `retorno`. |
| <code><a href="#@cnab/core.DetectedScope.property.layout">layout</a></code> | <code>java.lang.String</code> | Detected layout family, `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.DetectedScope.property.variant">variant</a></code> | <code>java.lang.String</code> | Detected variant, e.g. `sigcb` (empty when the bank has none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.DetectedScope.property.bank"></a>

```java
public java.lang.String getBank();
```

- *Type:* java.lang.String

Detected bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.DetectedScope.property.direction"></a>

```java
public java.lang.String getDirection();
```

- *Type:* java.lang.String

Detected direction, `remessa` or `retorno`.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.DetectedScope.property.layout"></a>

```java
public java.lang.String getLayout();
```

- *Type:* java.lang.String

Detected layout family, `cnab240` or `cnab400`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.DetectedScope.property.variant"></a>

```java
public java.lang.String getVariant();
```

- *Type:* java.lang.String

Detected variant, e.g. `sigcb` (empty when the bank has none).

---

### FieldSpec <a name="FieldSpec" id="@cnab/core.FieldSpec"></a>

Specification of a single positioned field within a record.

#### Initializer <a name="Initializer" id="@cnab/core.FieldSpec.Initializer"></a>

```java
import org.cnab.core.FieldSpec;

FieldSpec.builder()
    .dateFormat(java.lang.String)
    .decimals(java.lang.Number)
    .defaultValue(java.lang.String)
    .description(java.lang.String)
    .end(java.lang.Number)
    .fieldType(FieldType)
    .name(java.lang.String)
    .start(java.lang.Number)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.FieldSpec.property.dateFormat">dateFormat</a></code> | <code>java.lang.String</code> | Language-neutral date format token (empty when not a date field). |
| <code><a href="#@cnab/core.FieldSpec.property.decimals">decimals</a></code> | <code>java.lang.Number</code> | Number of implied decimal places (0 when not a decimal field). |
| <code><a href="#@cnab/core.FieldSpec.property.defaultValue">defaultValue</a></code> | <code>java.lang.String</code> | Default value applied by `build` when no value is supplied. |
| <code><a href="#@cnab/core.FieldSpec.property.description">description</a></code> | <code>java.lang.String</code> | Short human description. |
| <code><a href="#@cnab/core.FieldSpec.property.end">end</a></code> | <code>java.lang.Number</code> | 1-based end position, inclusive. |
| <code><a href="#@cnab/core.FieldSpec.property.fieldType">fieldType</a></code> | <code><a href="#@cnab/core.FieldType">FieldType</a></code> | Field type / padding behaviour. |
| <code><a href="#@cnab/core.FieldSpec.property.name">name</a></code> | <code>java.lang.String</code> | Canonical field name (the key used by `parse`/`build`). |
| <code><a href="#@cnab/core.FieldSpec.property.start">start</a></code> | <code>java.lang.Number</code> | 1-based start position, inclusive. |

---

##### `dateFormat`<sup>Required</sup> <a name="dateFormat" id="@cnab/core.FieldSpec.property.dateFormat"></a>

```java
public java.lang.String getDateFormat();
```

- *Type:* java.lang.String

Language-neutral date format token (empty when not a date field).

---

##### `decimals`<sup>Required</sup> <a name="decimals" id="@cnab/core.FieldSpec.property.decimals"></a>

```java
public java.lang.Number getDecimals();
```

- *Type:* java.lang.Number

Number of implied decimal places (0 when not a decimal field).

---

##### `defaultValue`<sup>Required</sup> <a name="defaultValue" id="@cnab/core.FieldSpec.property.defaultValue"></a>

```java
public java.lang.String getDefaultValue();
```

- *Type:* java.lang.String

Default value applied by `build` when no value is supplied.

---

##### `description`<sup>Required</sup> <a name="description" id="@cnab/core.FieldSpec.property.description"></a>

```java
public java.lang.String getDescription();
```

- *Type:* java.lang.String

Short human description.

---

##### `end`<sup>Required</sup> <a name="end" id="@cnab/core.FieldSpec.property.end"></a>

```java
public java.lang.Number getEnd();
```

- *Type:* java.lang.Number

1-based end position, inclusive.

---

##### `fieldType`<sup>Required</sup> <a name="fieldType" id="@cnab/core.FieldSpec.property.fieldType"></a>

```java
public FieldType getFieldType();
```

- *Type:* <a href="#@cnab/core.FieldType">FieldType</a>

Field type / padding behaviour.

---

##### `name`<sup>Required</sup> <a name="name" id="@cnab/core.FieldSpec.property.name"></a>

```java
public java.lang.String getName();
```

- *Type:* java.lang.String

Canonical field name (the key used by `parse`/`build`).

---

##### `start`<sup>Required</sup> <a name="start" id="@cnab/core.FieldSpec.property.start"></a>

```java
public java.lang.Number getStart();
```

- *Type:* java.lang.Number

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

```java
import org.cnab.core.LineOptions;

LineOptions.builder()
    .stripNonDigits(java.lang.Boolean)
    .truncateOversized(java.lang.Boolean)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.LineOptions.property.stripNonDigits">stripNonDigits</a></code> | <code>java.lang.Boolean</code> | When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input. |
| <code><a href="#@cnab/core.LineOptions.property.truncateOversized">truncateOversized</a></code> | <code>java.lang.Boolean</code> | When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`). |

---

##### `stripNonDigits`<sup>Required</sup> <a name="stripNonDigits" id="@cnab/core.LineOptions.property.stripNonDigits"></a>

```java
public java.lang.Boolean getStripNonDigits();
```

- *Type:* java.lang.Boolean

When true, every non-digit character is deleted from values written to numeric fields instead of raising (so `"1500.00"` becomes `"150000"` and `"-10"` becomes `"10"`). Prefer `setDecimal` for decimal input.

---

##### `truncateOversized`<sup>Required</sup> <a name="truncateOversized" id="@cnab/core.LineOptions.property.truncateOversized"></a>

```java
public java.lang.Boolean getTruncateOversized();
```

- *Type:* java.lang.Boolean

When true, a value longer than its field is cut to size instead of raising: alphanumeric fields keep the **leftmost** characters, numeric fields keep the **rightmost** digits (so `123456` in a 4-wide field becomes `3456`).

---

### ParsedLine <a name="ParsedLine" id="@cnab/core.ParsedLine"></a>

One parsed line of a whole CNAB file.

#### Initializer <a name="Initializer" id="@cnab/core.ParsedLine.Initializer"></a>

```java
import org.cnab.core.ParsedLine;

ParsedLine.builder()
    .fields(java.util.Map<java.lang.String, java.lang.String>)
    .recordKey(java.lang.String)
    .segment(java.lang.String)
    .tipo(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ParsedLine.property.fields">fields</a></code> | <code>java.util.Map<java.lang.String, java.lang.String></code> | Parsed field values (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.recordKey">recordKey</a></code> | <code>java.lang.String</code> | Detected record key (empty when the line could not be classified). |
| <code><a href="#@cnab/core.ParsedLine.property.segment">segment</a></code> | <code>java.lang.String</code> | The segment code for CNAB240 detail lines (empty otherwise). |
| <code><a href="#@cnab/core.ParsedLine.property.tipo">tipo</a></code> | <code>java.lang.String</code> | The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1). |

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.ParsedLine.property.fields"></a>

```java
public java.util.Map<java.lang.String, java.lang.String> getFields();
```

- *Type:* java.util.Map<java.lang.String, java.lang.String>

Parsed field values (empty when the line could not be classified).

---

##### `recordKey`<sup>Required</sup> <a name="recordKey" id="@cnab/core.ParsedLine.property.recordKey"></a>

```java
public java.lang.String getRecordKey();
```

- *Type:* java.lang.String

Detected record key (empty when the line could not be classified).

---

##### `segment`<sup>Required</sup> <a name="segment" id="@cnab/core.ParsedLine.property.segment"></a>

```java
public java.lang.String getSegment();
```

- *Type:* java.lang.String

The segment code for CNAB240 detail lines (empty otherwise).

---

##### `tipo`<sup>Required</sup> <a name="tipo" id="@cnab/core.ParsedLine.property.tipo"></a>

```java
public java.lang.String getTipo();
```

- *Type:* java.lang.String

The record-type discriminator value (CNAB240 pos 8 / CNAB400 pos 1).

---

### RecordSpec <a name="RecordSpec" id="@cnab/core.RecordSpec"></a>

Specification of a whole record (one full 240/400 line).

#### Initializer <a name="Initializer" id="@cnab/core.RecordSpec.Initializer"></a>

```java
import org.cnab.core.RecordSpec;

RecordSpec.builder()
    .bank(java.lang.String)
    .direction(java.lang.String)
    .fields(java.util.List<FieldSpec>)
    .layout(java.lang.String)
    .lineLength(java.lang.Number)
    .record(java.lang.String)
    .variant(java.lang.String)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.RecordSpec.property.bank">bank</a></code> | <code>java.lang.String</code> | Bank code, e.g. `104`. |
| <code><a href="#@cnab/core.RecordSpec.property.direction">direction</a></code> | <code>java.lang.String</code> | Optional direction, e.g. `remessa`/`retorno` (empty when none). |
| <code><a href="#@cnab/core.RecordSpec.property.fields">fields</a></code> | <code>java.util.List<<a href="#@cnab/core.FieldSpec">FieldSpec</a>></code> | All fields, ordered by position. |
| <code><a href="#@cnab/core.RecordSpec.property.layout">layout</a></code> | <code>java.lang.String</code> | Layout family, e.g. `cnab240` or `cnab400`. |
| <code><a href="#@cnab/core.RecordSpec.property.lineLength">lineLength</a></code> | <code>java.lang.Number</code> | Total line length (240 or 400). |
| <code><a href="#@cnab/core.RecordSpec.property.record">record</a></code> | <code>java.lang.String</code> | Record name, e.g. `header_arquivo`. |
| <code><a href="#@cnab/core.RecordSpec.property.variant">variant</a></code> | <code>java.lang.String</code> | Optional variant, e.g. `sigcb` (empty when none). |

---

##### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.RecordSpec.property.bank"></a>

```java
public java.lang.String getBank();
```

- *Type:* java.lang.String

Bank code, e.g. `104`.

---

##### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.RecordSpec.property.direction"></a>

```java
public java.lang.String getDirection();
```

- *Type:* java.lang.String

Optional direction, e.g. `remessa`/`retorno` (empty when none).

---

##### `fields`<sup>Required</sup> <a name="fields" id="@cnab/core.RecordSpec.property.fields"></a>

```java
public java.util.List<FieldSpec> getFields();
```

- *Type:* java.util.List<<a href="#@cnab/core.FieldSpec">FieldSpec</a>>

All fields, ordered by position.

---

##### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.RecordSpec.property.layout"></a>

```java
public java.lang.String getLayout();
```

- *Type:* java.lang.String

Layout family, e.g. `cnab240` or `cnab400`.

---

##### `lineLength`<sup>Required</sup> <a name="lineLength" id="@cnab/core.RecordSpec.property.lineLength"></a>

```java
public java.lang.Number getLineLength();
```

- *Type:* java.lang.Number

Total line length (240 or 400).

---

##### `record`<sup>Required</sup> <a name="record" id="@cnab/core.RecordSpec.property.record"></a>

```java
public java.lang.String getRecord();
```

- *Type:* java.lang.String

Record name, e.g. `header_arquivo`.

---

##### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.RecordSpec.property.variant"></a>

```java
public java.lang.String getVariant();
```

- *Type:* java.lang.String

Optional variant, e.g. `sigcb` (empty when none).

---

### ValidationResult <a name="ValidationResult" id="@cnab/core.ValidationResult"></a>

Outcome of validating a line against a record spec.

#### Initializer <a name="Initializer" id="@cnab/core.ValidationResult.Initializer"></a>

```java
import org.cnab.core.ValidationResult;

ValidationResult.builder()
    .errors(java.util.List<java.lang.String>)
    .valid(java.lang.Boolean)
    .build();
```

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.ValidationResult.property.errors">errors</a></code> | <code>java.util.List<java.lang.String></code> | Human-readable problems (empty when valid). |
| <code><a href="#@cnab/core.ValidationResult.property.valid">valid</a></code> | <code>java.lang.Boolean</code> | True when no problems were found. |

---

##### `errors`<sup>Required</sup> <a name="errors" id="@cnab/core.ValidationResult.property.errors"></a>

```java
public java.util.List<java.lang.String> getErrors();
```

- *Type:* java.util.List<java.lang.String>

Human-readable problems (empty when valid).

---

##### `valid`<sup>Required</sup> <a name="valid" id="@cnab/core.ValidationResult.property.valid"></a>

```java
public java.lang.Boolean getValid();
```

- *Type:* java.lang.Boolean

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
| <code><a href="#@cnab/core.Boleto.barcodeCheckDigit">barcodeCheckDigit</a></code> | Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44). |
| <code><a href="#@cnab/core.Boleto.fatorVencimento">fatorVencimento</a></code> | Compute the 4-digit *fator de vencimento* for a due date. |
| <code><a href="#@cnab/core.Boleto.isValidBarcode">isValidBarcode</a></code> | Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit. |
| <code><a href="#@cnab/core.Boleto.linhaDigitavel">linhaDigitavel</a></code> | Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces). |
| <code><a href="#@cnab/core.Boleto.linhaDigitavelFormatted">linhaDigitavelFormatted</a></code> | The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`. |
| <code><a href="#@cnab/core.Boleto.parseLinhaDigitavel">parseLinhaDigitavel</a></code> | Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode. |

---

##### `barcode` <a name="barcode" id="@cnab/core.Boleto.barcode"></a>

```java
import org.cnab.core.Boleto;

Boleto.barcode(BarcodeParams options)
```

Compose the 44-digit FEBRABAN cobrança barcode.

The general check digit (position 5) is computed with
`Modulo.mod11Boleto` over the other 43 digits.

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.Boleto.barcode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BarcodeParams">BarcodeParams</a>

bank, currency, due date, amount and campo livre.

---

##### `barcodeCheckDigit` <a name="barcodeCheckDigit" id="@cnab/core.Boleto.barcodeCheckDigit"></a>

```java
import org.cnab.core.Boleto;

Boleto.barcodeCheckDigit(java.lang.String barcode)
```

Compute the expected general check digit of a 44-digit barcode from its other 43 digits (positions 1-4 and 6-44).

Does not require the stored
DV (position 5) to be correct.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.barcodeCheckDigit.parameter.barcode"></a>

- *Type:* java.lang.String

the 44-digit barcode.

---

##### `fatorVencimento` <a name="fatorVencimento" id="@cnab/core.Boleto.fatorVencimento"></a>

```java
import org.cnab.core.Boleto;

Boleto.fatorVencimento(java.lang.String dateIso)
```

Compute the 4-digit *fator de vencimento* for a due date.

The factor counts days since the FEBRABAN base date 1997-10-07
(1997-10-08 → `0001`). After the counter reached 9999 on 2025-02-21,
FEBRABAN restarted it at 1000 on 2025-02-22; factors keep cycling in
the 1000-9999 window: `factor > 9999 → ((factor - 1000) % 9000) + 1000`.

All arithmetic is done in UTC to avoid timezone off-by-one errors.

###### `dateIso`<sup>Required</sup> <a name="dateIso" id="@cnab/core.Boleto.fatorVencimento.parameter.dateIso"></a>

- *Type:* java.lang.String

due date as ISO `YYYY-MM-DD`.

---

##### `isValidBarcode` <a name="isValidBarcode" id="@cnab/core.Boleto.isValidBarcode"></a>

```java
import org.cnab.core.Boleto;

Boleto.isValidBarcode(java.lang.String barcode)
```

Whether a string is a well-formed 44-digit cobrança barcode with a correct general check digit.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.isValidBarcode.parameter.barcode"></a>

- *Type:* java.lang.String

---

##### `linhaDigitavel` <a name="linhaDigitavel" id="@cnab/core.Boleto.linhaDigitavel"></a>

```java
import org.cnab.core.Boleto;

Boleto.linhaDigitavel(java.lang.String barcode)
```

Derive the 47-digit linha digitável from a valid 44-digit barcode, returned as plain digits (no dots/spaces).

Field layout (barcode positions are 1-based):

* field 1 (10 digits): barcode 1-4 + 20-24 + módulo-10 DV
* field 2 (11 digits): barcode 25-34 + módulo-10 DV
* field 3 (11 digits): barcode 35-44 + módulo-10 DV
* field 4 (1 digit): the barcode general DV (position 5)
* field 5 (14 digits): barcode 6-19 (fator de vencimento + amount)

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavel.parameter.barcode"></a>

- *Type:* java.lang.String

the 44-digit barcode.

---

##### `linhaDigitavelFormatted` <a name="linhaDigitavelFormatted" id="@cnab/core.Boleto.linhaDigitavelFormatted"></a>

```java
import org.cnab.core.Boleto;

Boleto.linhaDigitavelFormatted(java.lang.String barcode)
```

The linha digitável formatted for humans with the standard mask `#####.##### #####.###### #####.###### # ##############`.

###### `barcode`<sup>Required</sup> <a name="barcode" id="@cnab/core.Boleto.linhaDigitavelFormatted.parameter.barcode"></a>

- *Type:* java.lang.String

the 44-digit barcode.

---

##### `parseLinhaDigitavel` <a name="parseLinhaDigitavel" id="@cnab/core.Boleto.parseLinhaDigitavel"></a>

```java
import org.cnab.core.Boleto;

Boleto.parseLinhaDigitavel(java.lang.String linha)
```

Parse a linha digitável (47 digits, optionally with dots and spaces) back into the 44-digit barcode.

Validates the three módulo-10 field DVs and the reconstructed barcode's
general módulo-11 DV; throws with a clear message on any mismatch.

###### `linha`<sup>Required</sup> <a name="linha" id="@cnab/core.Boleto.parseLinhaDigitavel.parameter.linha"></a>

- *Type:* java.lang.String

the linha digitável, plain or formatted.

---



### BrCode <a name="BrCode" id="@cnab/core.BrCode"></a>

Build, parse and verify the PIX BR Code payload.

```java
// Example automatically generated from non-compiling source. May contain errors.
Object payload = BrCode.encode(Map.of(
        "pixKey", "fulano@example.com",
        "merchantName", "FULANO DE TAL",
        "merchantCity", "BRASILIA",
        "amount", "10.00"));
BrCode.isValid(payload); // true
BrCode.decode(payload).getPixKey();
```

#### Initializers <a name="Initializers" id="@cnab/core.BrCode.Initializer"></a>

```java
import org.cnab.core.BrCode;

new BrCode();
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

```java
import org.cnab.core.BrCode;

BrCode.crc16(java.lang.String payload)
```

CRC-16/CCITT-FALSE: polynomial `0x1021`, initial value `0xFFFF`, no input or output reflection, no final XOR. Returned as four uppercase hex characters, zero-padded.

Canonical check: `crc16("123456789") === "29B1"`.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.crc16.parameter.payload"></a>

- *Type:* java.lang.String

---

##### `decode` <a name="decode" id="@cnab/core.BrCode.decode"></a>

```java
import org.cnab.core.BrCode;

BrCode.decode(java.lang.String payload)
```

Decode a BR Code payload into its fields, reporting CRC validity.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.decode.parameter.payload"></a>

- *Type:* java.lang.String

---

##### `encode` <a name="encode" id="@cnab/core.BrCode.encode"></a>

```java
import org.cnab.core.BrCode;

BrCode.encode(BrCodeParams options)
```

Build a BR Code payload, CRC included.

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.BrCode.encode.parameter.options"></a>

- *Type:* <a href="#@cnab/core.BrCodeParams">BrCodeParams</a>

---

##### `isValid` <a name="isValid" id="@cnab/core.BrCode.isValid"></a>

```java
import org.cnab.core.BrCode;

BrCode.isValid(java.lang.String payload)
```

`true` when the payload's trailing CRC matches a recomputation over everything before it.

Returns `false` rather than throwing for anything
that is not a well-formed payload — callers use this as a predicate.

###### `payload`<sup>Required</sup> <a name="payload" id="@cnab/core.BrCode.isValid.parameter.payload"></a>

- *Type:* java.lang.String

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

```java
public java.util.List<ParsedLine> parse(java.lang.String content)
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

- *Type:* java.lang.String

---

##### `parseToJson` <a name="parseToJson" id="@cnab/core.CnabFile.parseToJson"></a>

```java
public java.lang.String parseToJson(java.lang.String content)
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

- *Type:* java.lang.String

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

```java
import org.cnab.core.CnabFile;

CnabFile.detect(java.lang.String specJson, java.lang.String content)
```

Convenience: detect the file's scope with `detectScope` and return a `CnabFile` parser scoped to it.

Throws the same errors as `detectScope`
when the content cannot be identified.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.detect.parameter.specJson"></a>

- *Type:* java.lang.String

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detect.parameter.content"></a>

- *Type:* java.lang.String

---

##### `detectScope` <a name="detectScope" id="@cnab/core.CnabFile.detectScope"></a>

```java
import org.cnab.core.CnabFile;

CnabFile.detectScope(java.lang.String specJson, java.lang.String content)
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

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.detectScope.parameter.specJson"></a>

- *Type:* java.lang.String

---

###### `content`<sup>Required</sup> <a name="content" id="@cnab/core.CnabFile.detectScope.parameter.content"></a>

- *Type:* java.lang.String

---

##### `forBank` <a name="forBank" id="@cnab/core.CnabFile.forBank"></a>

```java
import org.cnab.core.CnabFile;

CnabFile.forBank(java.lang.String specJson, java.lang.String layout, java.lang.String bank, java.lang.String variant, java.lang.String direction)
```

Build a file parser scoped to the records of one bank (and optional variant / direction).

`variant` and `direction` may be empty strings.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFile.forBank.parameter.specJson"></a>

- *Type:* java.lang.String

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBank.parameter.layout"></a>

- *Type:* java.lang.String

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBank.parameter.bank"></a>

- *Type:* java.lang.String

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBank.parameter.variant"></a>

- *Type:* java.lang.String

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBank.parameter.direction"></a>

- *Type:* java.lang.String

---

##### `forBankBundled` <a name="forBankBundled" id="@cnab/core.CnabFile.forBankBundled"></a>

```java
import org.cnab.core.CnabFile;

CnabFile.forBankBundled(java.lang.String layout, java.lang.String bank, java.lang.String variant, java.lang.String direction)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFile.forBankBundled.parameter.layout"></a>

- *Type:* java.lang.String

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFile.forBankBundled.parameter.bank"></a>

- *Type:* java.lang.String

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFile.forBankBundled.parameter.variant"></a>

- *Type:* java.lang.String

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFile.forBankBundled.parameter.direction"></a>

- *Type:* java.lang.String

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

```java
public void addDetail(java.lang.String recordName, java.util.Map<java.lang.String, java.lang.String> values)
```

Append a detail line.

`recordName` is the record's short name in scope,
e.g. `detalhe_segmento_p` (CNAB240) or `detalhe` (CNAB400). Throws when
the name is unknown in this scope or (CNAB240) when no lote is open.

###### `recordName`<sup>Required</sup> <a name="recordName" id="@cnab/core.CnabFileBuilder.addDetail.parameter.recordName"></a>

- *Type:* java.lang.String

---

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.addDetail.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

##### `endLote` <a name="endLote" id="@cnab/core.CnabFileBuilder.endLote"></a>

```java
public void endLote(java.util.Map<java.lang.String, java.lang.String> trailerValues)
```

CNAB240 only: close the open lote with the given `trailer_lote` values.

The lote's `qtde_registro_lote` (header_lote + details + trailer_lote) is
auto-computed unless supplied here.

###### `trailerValues`<sup>Required</sup> <a name="trailerValues" id="@cnab/core.CnabFileBuilder.endLote.parameter.trailerValues"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

##### `startLote` <a name="startLote" id="@cnab/core.CnabFileBuilder.startLote"></a>

```java
public void startLote(java.util.Map<java.lang.String, java.lang.String> headerValues)
```

CNAB240 only: begin a new lote with the given `header_lote` values.

Throws for CNAB400 (which has no lotes) and when a lote is already open.

###### `headerValues`<sup>Required</sup> <a name="headerValues" id="@cnab/core.CnabFileBuilder.startLote.parameter.headerValues"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

##### `toFileContent` <a name="toFileContent" id="@cnab/core.CnabFileBuilder.toFileContent"></a>

```java
public java.lang.String toFileContent(java.util.Map<java.lang.String, java.lang.String> trailerValues)
```

Emit the whole file: header + lotes/details + `trailer_arquivo`, lines joined with `\n` (no trailing newline).

Control fields are auto-computed
per layout (see ADR 0007); user-supplied counter/total values win, pure
sequence counters are always builder-owned.

###### `trailerValues`<sup>Required</sup> <a name="trailerValues" id="@cnab/core.CnabFileBuilder.toFileContent.parameter.trailerValues"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

##### `withHeader` <a name="withHeader" id="@cnab/core.CnabFileBuilder.withHeader"></a>

```java
public void withHeader(java.util.Map<java.lang.String, java.lang.String> values)
```

Set the values for the `header_arquivo` record.

(Named `withHeader`
rather than `setHeader` because jsii prohibits `setXxx` method names —
they conflict with Java property setters.)

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabFileBuilder.withHeader.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabFileBuilder.forBank">forBank</a></code> | Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings. |
| <code><a href="#@cnab/core.CnabFileBuilder.forBankBundled">forBankBundled</a></code> | Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node). |

---

##### `forBank` <a name="forBank" id="@cnab/core.CnabFileBuilder.forBank"></a>

```java
import org.cnab.core.CnabFileBuilder;

CnabFileBuilder.forBank(java.lang.String specJson, java.lang.String layout, java.lang.String bank, java.lang.String variant, java.lang.String direction)
```

Create a builder scoped to the records of one bank (and optional variant / direction) — same record-key prefix logic as `CnabFile.forBank`. `variant` and `direction` may be empty strings.

###### `specJson`<sup>Required</sup> <a name="specJson" id="@cnab/core.CnabFileBuilder.forBank.parameter.specJson"></a>

- *Type:* java.lang.String

---

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBank.parameter.layout"></a>

- *Type:* java.lang.String

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBank.parameter.bank"></a>

- *Type:* java.lang.String

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBank.parameter.variant"></a>

- *Type:* java.lang.String

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBank.parameter.direction"></a>

- *Type:* java.lang.String

---

##### `forBankBundled` <a name="forBankBundled" id="@cnab/core.CnabFileBuilder.forBankBundled"></a>

```java
import org.cnab.core.CnabFileBuilder;

CnabFileBuilder.forBankBundled(java.lang.String layout, java.lang.String bank, java.lang.String variant, java.lang.String direction)
```

Same as `forBank`, but against the spec bundled with this package — the common path, and the only one available to consumers who have no `spec.json` file (i.e. everyone outside Node).

jsii forbids method overloads, so this is a distinct name rather than an
optional first parameter.

###### `layout`<sup>Required</sup> <a name="layout" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.layout"></a>

- *Type:* java.lang.String

---

###### `bank`<sup>Required</sup> <a name="bank" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.bank"></a>

- *Type:* java.lang.String

---

###### `variant`<sup>Required</sup> <a name="variant" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.variant"></a>

- *Type:* java.lang.String

---

###### `direction`<sup>Required</sup> <a name="direction" id="@cnab/core.CnabFileBuilder.forBankBundled.parameter.direction"></a>

- *Type:* java.lang.String

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

```java
public java.lang.String getDateIso(java.util.Map<java.lang.String, java.lang.String> values, java.lang.String name)
```

Read the value of a date/time field from a parsed value map and return it in ISO form, converted per the field's `dateFormat`:  - `ddMMyyyy` -> `YYYY-MM-DD` - `ddMMyy`   -> `YYYY-MM-DD`, with a fixed century pivot: `yy >= 70` is   read as `19yy`, otherwise `20yy` (so the representable range is   1970-2069;

see ADR 0006)

* `HHmmss`   -> `HH:mm:ss`

Returns `''` when the raw value is all zeros (CNAB's "unset" convention).
Throws when the field name is unknown, the field has no `dateFormat`, or
the stored value is not a digit string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDateIso.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDateIso.parameter.name"></a>

- *Type:* java.lang.String

---

##### `getDecimal` <a name="getDecimal" id="@cnab/core.CnabRecord.getDecimal"></a>

```java
public java.lang.String getDecimal(java.util.Map<java.lang.String, java.lang.String> values, java.lang.String name)
```

Read the value of a decimal field (`num_decimal`) from a parsed value map and return it as a **decimal string** with the field's implied decimal places inserted, e.g. raw `"150000"` with `decimals: 2` -> `"1500.00"` and `"0"` -> `"0.00"`. For fields with `decimals: 0` the integer string is returned unchanged.

Numeric values cross the API boundary as decimal strings — never floats —
so they stay exact, jsii-safe and language-neutral (see ADR 0006).

Throws when the field name is unknown or the stored value is not a digit
string.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.getDecimal.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.getDecimal.parameter.name"></a>

- *Type:* java.lang.String

---

##### `parse` <a name="parse" id="@cnab/core.CnabRecord.parse"></a>

```java
public java.util.Map<java.lang.String, java.lang.String> parse(java.lang.String line)
```

Parse a fixed-width line into a map of field name -> value.

Values are
normalized (alpha right-trimmed, numerics stripped of left padding) so that
`toLine(parse(line))` reproduces a well-formed line.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.parse.parameter.line"></a>

- *Type:* java.lang.String

---

##### `setDateIso` <a name="setDateIso" id="@cnab/core.CnabRecord.setDateIso"></a>

```java
public java.util.Map<java.lang.String, java.lang.String> setDateIso(java.util.Map<java.lang.String, java.lang.String> values, java.lang.String name, java.lang.String iso)
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

```java
// Example automatically generated from non-compiling source. May contain errors.
values = record.setDateIso(values, "vencimento", "2026-03-15");
```

Throws when the field name is unknown, the field has no `dateFormat`, or
the input is malformed (wrong shape, month/day/time component out of range).

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDateIso.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDateIso.parameter.name"></a>

- *Type:* java.lang.String

---

###### `iso`<sup>Required</sup> <a name="iso" id="@cnab/core.CnabRecord.setDateIso.parameter.iso"></a>

- *Type:* java.lang.String

---

##### `setDecimal` <a name="setDecimal" id="@cnab/core.CnabRecord.setDecimal"></a>

```java
public java.util.Map<java.lang.String, java.lang.String> setDecimal(java.util.Map<java.lang.String, java.lang.String> values, java.lang.String name, java.lang.String decimalValue)
```

Set the value of a decimal field (`num_decimal`) from a **decimal string**, the inverse of `getDecimal`: `"1500.00"` with `decimals: 2` stores `"150000"` in the map. The separator is `.`; the fractional part may be omitted (`"1500"` -> `"150000"`) or shorter than the field's decimals (it is right-padded with zeros: `"1500.5"` -> `"150050"`).

Returns a **new map** with the field set; the input is not modified. It
cannot mutate: jsii marshals maps **by value**, so a mutation performed
here would be invisible to a Python/Java/.NET caller. This method used to
return `void` and mutate, which worked only in Node and silently did
nothing everywhere else.

```java
// Example automatically generated from non-compiling source. May contain errors.
values = record.setDecimal(values, "valor_titulo", "1500.00");
```

Throws when the field name is unknown, the value is not a well-formed
decimal string, or it carries more fraction digits than the field allows.

###### `values`<sup>Required</sup> <a name="values" id="@cnab/core.CnabRecord.setDecimal.parameter.values"></a>

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

###### `name`<sup>Required</sup> <a name="name" id="@cnab/core.CnabRecord.setDecimal.parameter.name"></a>

- *Type:* java.lang.String

---

###### `decimalValue`<sup>Required</sup> <a name="decimalValue" id="@cnab/core.CnabRecord.setDecimal.parameter.decimalValue"></a>

- *Type:* java.lang.String

---

##### `toLine` <a name="toLine" id="@cnab/core.CnabRecord.toLine"></a>

```java
public java.lang.String toLine(java.util.Map<java.lang.String, java.lang.String> values)
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

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

##### `toLineWithOptions` <a name="toLineWithOptions" id="@cnab/core.CnabRecord.toLineWithOptions"></a>

```java
public java.lang.String toLineWithOptions(java.util.Map<java.lang.String, java.lang.String> values, LineOptions options)
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

- *Type:* java.util.Map<java.lang.String, java.lang.String>

---

###### `options`<sup>Required</sup> <a name="options" id="@cnab/core.CnabRecord.toLineWithOptions.parameter.options"></a>

- *Type:* <a href="#@cnab/core.LineOptions">LineOptions</a>

---

##### `validate` <a name="validate" id="@cnab/core.CnabRecord.validate"></a>

```java
public ValidationResult validate(java.lang.String line)
```

Validate a line against this record spec.

###### `line`<sup>Required</sup> <a name="line" id="@cnab/core.CnabRecord.validate.parameter.line"></a>

- *Type:* java.lang.String

---

#### Static Functions <a name="Static Functions" id="Static Functions"></a>

| **Name** | **Description** |
| --- | --- |
| <code><a href="#@cnab/core.CnabRecord.fromJson">fromJson</a></code> | Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`). |

---

##### `fromJson` <a name="fromJson" id="@cnab/core.CnabRecord.fromJson"></a>

```java
import org.cnab.core.CnabRecord;

CnabRecord.fromJson(java.lang.String json)
```

Build a record from its compiled JSON (a single record node of `packages/spec/dist/spec.json`).

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabRecord.fromJson.parameter.json"></a>

- *Type:* java.lang.String

---

#### Properties <a name="Properties" id="Properties"></a>

| **Name** | **Type** | **Description** |
| --- | --- | --- |
| <code><a href="#@cnab/core.CnabRecord.property.spec">spec</a></code> | <code><a href="#@cnab/core.RecordSpec">RecordSpec</a></code> | The underlying record specification. |

---

##### `spec`<sup>Required</sup> <a name="spec" id="@cnab/core.CnabRecord.property.spec"></a>

```java
public RecordSpec getSpec();
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

```java
public java.util.List<java.lang.String> codeTableKeys()
```

All available code-table keys, e.g. `cnab400/104/retorno/codigo_ocorrencia`.

##### `getCodeTable` <a name="getCodeTable" id="@cnab/core.CnabSpec.getCodeTable"></a>

```java
public java.util.Map<java.lang.String, java.lang.String> getCodeTable(java.lang.String key)
```

Get a code table (code -> description map) by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getCodeTable.parameter.key"></a>

- *Type:* java.lang.String

---

##### `getRecord` <a name="getRecord" id="@cnab/core.CnabSpec.getRecord"></a>

```java
public CnabRecord getRecord(java.lang.String key)
```

Get a record by key.

Throws if it does not exist.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.getRecord.parameter.key"></a>

- *Type:* java.lang.String

---

##### `hasCodeTable` <a name="hasCodeTable" id="@cnab/core.CnabSpec.hasCodeTable"></a>

```java
public java.lang.Boolean hasCodeTable(java.lang.String key)
```

Whether a code table with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasCodeTable.parameter.key"></a>

- *Type:* java.lang.String

---

##### `hasRecord` <a name="hasRecord" id="@cnab/core.CnabSpec.hasRecord"></a>

```java
public java.lang.Boolean hasRecord(java.lang.String key)
```

Whether a record with the given key exists.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.hasRecord.parameter.key"></a>

- *Type:* java.lang.String

---

##### `lookupCode` <a name="lookupCode" id="@cnab/core.CnabSpec.lookupCode"></a>

```java
public java.lang.String lookupCode(java.lang.String key, java.lang.String code)
```

Look up a code's description in a table, or `''` when the code is unknown.

The code is normalized during lookup: tried as-is, then with leading zeros
stripped (legacy tables use unpadded keys like `"2"` while CNAB fields
carry `"02"`), then zero-padded to 2 digits.

###### `key`<sup>Required</sup> <a name="key" id="@cnab/core.CnabSpec.lookupCode.parameter.key"></a>

- *Type:* java.lang.String

---

###### `code`<sup>Required</sup> <a name="code" id="@cnab/core.CnabSpec.lookupCode.parameter.code"></a>

- *Type:* java.lang.String

---

##### `recordKeys` <a name="recordKeys" id="@cnab/core.CnabSpec.recordKeys"></a>

```java
public java.util.List<java.lang.String> recordKeys()
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

```java
import org.cnab.core.CnabSpec;

CnabSpec.bundled()
```

The compiled spec that ships inside this package — no file, no download, no `spec.json` path to resolve.

This is the entry point for every non-Node language: a Python / Java /
.NET consumer installs the engine and immediately has the full catalog,
every record and every code table.

##### `bundledJson` <a name="bundledJson" id="@cnab/core.CnabSpec.bundledJson"></a>

```java
import org.cnab.core.CnabSpec;

CnabSpec.bundledJson()
```

The raw JSON of the spec that ships inside this package, so the `specJson`-taking entry points (`CnabFile.detectScope`, `CnabFile.detect`, …) are usable without a file too.

##### `fromJson` <a name="fromJson" id="@cnab/core.CnabSpec.fromJson"></a>

```java
import org.cnab.core.CnabSpec;

CnabSpec.fromJson(java.lang.String json)
```

Load from the compiled `spec.json` content.

###### `json`<sup>Required</sup> <a name="json" id="@cnab/core.CnabSpec.fromJson.parameter.json"></a>

- *Type:* java.lang.String

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

```java
import org.cnab.core.Modulo;

Modulo.mod10(java.lang.String digits)
```

Módulo 10 (boleto / linha digitável field DV).

Rule: weights 2 and 1 alternate right-to-left starting with 2. Each
digit is multiplied by its weight; when a product exceeds 9 its decimal
digits are summed (e.g. 12 → 1 + 2 = 3). The DV is the amount needed to
reach the next multiple of 10: `(10 - (sum % 10)) % 10`.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod10.parameter.digits"></a>

- *Type:* java.lang.String

numeric string (one or more digits).

---

##### `mod11` <a name="mod11" id="@cnab/core.Modulo.mod11"></a>

```java
import org.cnab.core.Modulo;

Modulo.mod11(java.lang.String digits)
```

Generic CNAB módulo 11 (remessa/retorno field DVs).

Rule: weights 2, 3, ..., 9 cycle right-to-left. The DV is
`11 - (sum % 11)`; when that result is 0, 10 or 11 the DV is 0.

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11.parameter.digits"></a>

- *Type:* java.lang.String

numeric string (one or more digits).

---

##### `mod11Boleto` <a name="mod11Boleto" id="@cnab/core.Modulo.mod11Boleto"></a>

```java
import org.cnab.core.Modulo;

Modulo.mod11Boleto(java.lang.String digits)
```

FEBRABAN barcode módulo 11 variant (the general check digit — DAC — of the 44-digit cobrança barcode, position 5).

Rule: same weighting as `mod11` (weights 2..9 cycling right-to-left),
but the DV is `11 - (sum % 11)` mapped so that a result of 0, 1, 10 or
11 becomes 1 (the barcode DV can never be 0).

###### `digits`<sup>Required</sup> <a name="digits" id="@cnab/core.Modulo.mod11Boleto.parameter.digits"></a>

- *Type:* java.lang.String

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

