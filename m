Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.50599.1584964532091320042
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 04:55:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPrCoPRk;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: amayajindal786@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id j29so200757pgl.3;
        Mon, 23 Mar 2020 04:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:cc:mime-version
         :content-transfer-encoding;
        bh=dhyqTC9Fdn5vUMAieJoHyrHWRM48wabbV8t7kK0Gwz8=;
        b=iPrCoPRkPV8YD5tGWDIV8pkW8GzlOsbDsWQMhBIaQkvrK9bcK0sOD3nQpaERMpoeBP
         6zcUWxfOADgt6np37XvL8KL3pIyGOnUUTUaPhL3lz6hyAYQnFPXKssVcS4xFe0Rqg79X
         7dfxLF2b4D1ziX4nJhtP73BNPDGq6WPVgK7zWqKR1f+kYdNvxAaz1DKHPnCK2A4F7YH/
         IIh0nHG91fP+e7eSq0K3Ehk+P896uB3biX+/o0IHhIhzR8QPa4OPC0hpfSMGIuJ9CwJT
         qOkFCRwjdKRohplW36JsuNsYDHl099tFtbh2hR/ziMGuPaKS5RS94TRkXRjCpRTLrNF/
         bdrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to:cc
         :mime-version:content-transfer-encoding;
        bh=dhyqTC9Fdn5vUMAieJoHyrHWRM48wabbV8t7kK0Gwz8=;
        b=izVZV4xFDychYrPLW4eFcJ+vtHk7XMX88oWY9DLUQTGVOQcKP6pM7S4wouluEQhMwe
         BMsTGSS388AQ6+ctW69CAh3t1W8jSJ2pkl/2eOxFeOkkjgrPT+WRlkpcAHfLM/PK3D05
         c6ehbQIZbfHgXviLYn3YVyURsHLFUZUkWnhx2Zi0S2o5lbQHPPsiOpy6yRzip8a8S1C2
         xDFZbRfyGMuHeyAY+x91euoIK0E+TdMeTuBqqmR/WAVyY5Uq/kotsupI5fLoCsNr1bDQ
         O2/fKzOwwcQS1PDtTBOMMcvJwvzJiC0rVaiWUFW4DWjK8GBZDC28zB5tqqFf039ISmO5
         WiGg==
X-Gm-Message-State: ANhLgQ3ccUJdjCqgYu3CeYETj8pNPgeBudaXJxA5KtgO8PKgiFNnBYJW
	tAjMrue3h2D3J8HS5+jjv8BlowNh
X-Google-Smtp-Source: ADFU+vs1Vb/7cnUgvAXLbavrITOtRWj1adqY1vAXPxAesHfptANtXMt1Q2GKK1VyO7+1dkovSu54Ow==
X-Received: by 2002:a62:92:: with SMTP id 140mr22842048pfa.186.1584964531323;
        Mon, 23 Mar 2020 04:55:31 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [192.168.1.4] ([122.173.142.186])
        by smtp.gmail.com with ESMTPSA id 189sm3498249pgh.58.2020.03.23.04.55.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:55:30 -0700 (PDT)
Date: Mon, 23 Mar 2020 14:02:07 +0530
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
X-Priority: 3
Message-ID: <-h9f4rg-ntxj6vcoqai6hcfmov-yocrfn-7sbd94gjcchw-xppk6o1b91vuj87x5vl88ixy-j8o97whmlt4ghpje6m53lewpft02e5-ua47jjm3vuaf-e1h7sk-ksk379wy0tl8e10r5idf1g2v-mqdaud.1584952327968@email.android.com>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
 <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
 <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com> <20200218090628.GC104502@korppu> <-hhdqq849gh00fpec09-k43vkev29eapwgdmfmrg31wzpc79dq-3ob9vu4ljzio-kfzmy5-k9d9xp-fje67s6nyz1o5020z4-gvie0werwo8p-or1nts-ut4yas-3vp530t7t1ig-wdisaynth1prjt71uh.1582097826706@email.android.com> <15FD60EEC90B82B0.21252@lists.yoctoproject.org> <15FDB5F5FFA2CF3D.29573@lists.yoctoproject.org>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Khem Raj via Lists.Yoctoproject.Org"
 <raj.khem=gmail.com@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkhpIGFsbCwmbmJzcDs8ZGl2Pjxicj48L2Rpdj48ZGl2PlBscyBndWlk
ZSB3aGljaCB5b2N0byBwb2t5IHJlZmVyZW5jZSBzdXBwb3J0IE1vbmdvIDQuMi4yLiZuYnNwOzxi
cj48ZGl2Pjxicj5TZW50IGZyb20gbXkgSHVhd2VpIHBob25lPC9kaXY+PC9kaXY+PC9kaXY+PGRp
diBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnI+PGJyPi0tLS0tLS0tIE9yaWdpbmFsIG1lc3Nh
Z2UgLS0tLS0tLS08YnI+RnJvbTogImFtYXlhIGppbmRhbCB2aWEgTGlzdHMuWW9jdG9wcm9qZWN0
Lk9yZyIgJmx0O2FtYXlhamluZGFsNzg2PWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
Jmd0Ozxicj5EYXRlOiBUaHUsIDE5IE1hciAyMDIwLCA2OjI4IHBtPGJyPlRvOiAiS2hlbSBSYWog
dmlhIExpc3RzLllvY3RvcHJvamVjdC5PcmciICZsdDtyYWoua2hlbT1nbWFpbC5jb21AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyZndDssIHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnI+Q2M6
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnI+U3ViamVjdDogUmU6IFt5b2N0b10gSXNz
dWUgd2hpbGUgYWRkaW5nIHRoZSBzdXBwb3J0IGZvciBUTFMxLjMgaW4gZXhpc3Rpbmcga3JvZ290
aCB5b2N0byAjeW9jdG8gI3lvY3RvICN5b2N0byAjeW9jdG8gI2FwdCAjcmFzcGJlcnJ5cGkgI3lv
Y3RvPGJyPjxibG9ja3F1b3RlPjxkaXYgZGlyPSJhdXRvIj5QbHMgY2FuIGFueSBib2R5IGd1aWRl
IGFuZCBzdWdnZXN0IHRoZSByZWFzb24gb2YgaXNzdWU8YnIgLz48YnIgLz5TZW50IGZyb20gbXkg
SHVhd2VpIHBob25lPC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnIgLz48YnIg
Lz4tLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tPGJyIC8+RnJvbTogJiMzNDthbWF5
YSBqaW5kYWwgdmlhIExpc3RzLllvY3RvcHJvamVjdC5PcmcmIzM0OyAmbHQ7YW1heWFqaW5kYWw3
ODYmIzYxO2dtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnJmd0OzxiciAvPkRhdGU6IFdl
ZCwgMTggTWFyIDIwMjAsIDQ6MzAgcG08YnIgLz5UbzogJiMzNDtLaGVtIFJhaiB2aWEgTGlzdHMu
WW9jdG9wcm9qZWN0Lk9yZyYjMzQ7ICZsdDtyYWoua2hlbSYjNjE7Z21haWwuY29tQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcmZ3Q7LCB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyIC8+Q2M6
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnIgLz5TdWJqZWN0OiBSZTogW3lvY3RvXSBJ
c3N1ZSB3aGlsZSBhZGRpbmcgdGhlIHN1cHBvcnQgZm9yIFRMUzEuMyBpbiBleGlzdGluZyBrcm9n
b3RoIHlvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICN5b2N0byAjYXB0ICNyYXNwYmVycnlwaSAj
eW9jdG88YnIgLz48YmxvY2txdW90ZT48ZGl2IGRpcj0iYXV0byI+SGkgQWxswqA8ZGl2PjxiciAv
PjwvZGl2PjxkaXY+wqB3aGlsZSBJIHRyaWVkIHRvIGFkZCBPcGVuc3NoIDcuOHAxIHJlY2lwZSBp
biBrcm9nb3RoIHlvY3RvLCB0byBhZGQgc3VwcG9ydCBmb3Igb3BlbnNzbCAxLjEuMWIuIEV2ZXJ5
IHRoaW5nIGNvbXBpbGVkIHN1Y2Nlc3NmdWxseSBidXQgbm93IEkgYW0gZ2V0dGluZyBpc3N1ZSB3
aGVuIEkgdHJpZWQgdG8uIHRlc3QgdGhhdCBvbiBib2FyZCwgaXRzIGdldHRpbmcgcmVzdGFydGVk
IGV2ZXJ5IHRpbWUuIFBsZWFzZSBzdWdnZXN0wqA8YnIgLz48YnIgLz5TZW50IGZyb20gbXkgSHVh
d2VpIHBob25lPC9kaXY+PC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnIgLz48
YnIgLz4tLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tPGJyIC8+RnJvbTogYW1heWEg
amluZGFsICZsdDthbWF5YWppbmRhbDc4NkBnbWFpbC5jb20mZ3Q7PGJyIC8+RGF0ZTogV2VkLCAx
OSBGZWIgMjAyMCwgMTowOSBwbTxiciAvPlRvOiBNaWtrby5SYXBlbGlAYm13LmRlPGJyIC8+Q2M6
IGFsZXgua2FuYXZpbkBnbWFpbC5jb20sIHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnIg
Lz5TdWJqZWN0OiBSZTogW3lvY3RvXSBJc3N1ZSB3aGlsZSBhZGRpbmcgdGhlIHN1cHBvcnQgZm9y
IFRMUzEuMyBpbiBleGlzdGluZyBrcm9nb3RoIHlvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICN5
b2N0byAjYXB0ICNyYXNwYmVycnlwaSAjeW9jdG88YnIgLz48YmxvY2txdW90ZT48ZGl2IGRpcj0i
YXV0byI+QW55IGtpbmQgb2YgcGF0Y2ggaWYgYXZhaWxhYmxlIHRvIGRpcmVjdGx5IGFwcGx5PyBJ
IGFtIGdldHRpbmcgZXJyb3IgaW4gZ29iamVjdC1pbnRyb3NwZWN0aW9uIG5hdGl2ZSB0aGF0IHNo
YTEgc2hhMjU2IGV0YyBub3QgZm91bmQgaW4gdXNyL2xpYi9weXRob24yIDcvaGFzaGxpYi5weTxi
ciAvPjxiciAvPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48ZGl2IHN0eWxlPSJsaW5l
LWhlaWdodDoxLjUiPjxiciAvPjxiciAvPi0tLS0tLS0tIE9yaWdpbmFsIG1lc3NhZ2UgLS0tLS0t
LS08YnIgLz5Gcm9tOiBNaWtrby5SYXBlbGlAYm13LmRlPGJyIC8+RGF0ZTogVHVlLCAxOCBGZWIg
MjAyMCwgMjozNiBwbTxiciAvPlRvOiBhbWF5YWppbmRhbDc4NkBnbWFpbC5jb208YnIgLz5DYzog
YWxleC5rYW5hdmluQGdtYWlsLmNvbSwgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxiciAv
PlN1YmplY3Q6IFJlOiBbeW9jdG9dIElzc3VlIHdoaWxlIGFkZGluZyB0aGUgc3VwcG9ydCBmb3Ig
VExTMS4zIGluIGV4aXN0aW5nIGtyb2dvdGggeW9jdG8gI3lvY3RvICN5b2N0byAjeW9jdG8gI3lv
Y3RvICNhcHQgI3Jhc3BiZXJyeXBpICN5b2N0bzxiciAvPjxibG9ja3F1b3RlPkhpLDxiciAvPjxi
ciAvPk9uIFR1ZSwgRmViIDE4LCAyMDIwIGF0IDAxOjIwOjI1UE0gJiM0MzswNTMwLCBhbWF5YSBq
aW5kYWwgd3JvdGU6PGJyIC8+Jmd0O8KgwqDCoCBUaGFua3MgZm9yIHlvdXIgcHJvbXB0IHJlcGx5
LiBCdXQgaXMgbm90IHRoZXJlIGFueSB3YXkgc2ltaWxhciB0byBhZGQ8YnIgLz4mZ3Q7wqDCoMKg
IHN1cHBvcnQgZm9yIFRMUzEuMyBpbnN0ZWFkIG9mIG1vdmluZyB0byBuZXcgeW9jdG8gcmVsZWFz
ZXM8YnIgLz48YnIgLz5vcGVuc3NsIGlzIHRyaWNreSB0byB1cGRhdGUgYW5kIHJlcXVpcmVzIGJh
Y2twb3J0aW5nIGZpeGVzIGZvciBtYW55LCBtYW55IHJlY2lwZXM8YnIgLz50byBnZXQgYnVpbGRz
IHBhc3NpbmcgZXRjLiBEZXBlbmRpbmcgb24gcHJvamVjdCBzaXplLCBpdCBtYXkgYmUgcG9zc2li
bGU8YnIgLz50byB1cGRhdGUgb25seSB0aG9zZSBjb21wb25lbnRzIHdoaWNoIHlvdSB1c2UsIGUu
Zy4gYmFja3BvcnQgY29tbWl0cyBmcm9tPGJyIC8+cG9reSBtYXN0ZXIgb3IgcmVsZWFzZSBicmFu
Y2hlcyBsaWtlIHdhcnJpb3IuIFRoZSBudW1iZXIgb2YgYmFja3BvcnRlZCBjaGFuZ2VzPGJyIC8+
d2lsbCBiZSBsYXJnZS4gSSYjMzk7dmUgcG9ydGVkIG9wZW5zc2wgMS4xLjFkIHBhdGNoZXMgdG8g
eW9jdG8gMi41IHN1bW8gYnV0IGl0IHdhc24mIzM5O3Q8YnIgLz5wcmV0dHkuIEEgc3RyYXRlZ3kg
d2l0aCByZWd1bGFyIHlvY3RvIHVwZGF0ZXMgaXMgbXVjaCBiZXR0ZXIgYW5kIGZvcmNlcyB5b3U8
YnIgLz50byB0aGluayBvZiB5b3VyIGRlcGVuZGVuY2llcyBhbmQgcGF0Y2hlcyBtdWNoIGhhcmRl
ci48YnIgLz48YnIgLz5Ib3BlIHRoaXMgaGVscHMsPGJyIC8+PGJyIC8+LU1pa2tvPC9ibG9ja3F1
b3RlPjwvZGl2PjwvYmxvY2txdW90ZT48L2Rpdj48L2Jsb2NrcXVvdGU+PC9kaXY+PC9ibG9ja3F1
b3RlPjwvZGl2Pg==

