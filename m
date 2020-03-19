Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web12.11485.1584622711566798558
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 05:58:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rWuilUJL;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: amayajindal786@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id v13so1003443pjb.0;
        Thu, 19 Mar 2020 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:cc:mime-version
         :content-transfer-encoding;
        bh=ve4DbjpppEqOZDHEQIGMWVuLnH/4TXZbn8TfDjp1ymw=;
        b=rWuilUJLplx/MReDZgQ8aEzcK4bysCnMW2O/KeyaIg/H67Jm4cJsyFUBKzlXKTU4PA
         uVFlt1VJ0Ly2KaAXHyuH7alqag5CLNLeCbiPTNFW84AmDH+eoJUqeS3BgLR/ZPg5QKtr
         5mG32tjagx1mGl5BGPzIta/yrYkE5Q2YoX3WidEvCtAXgmXT+Lm0fEV00IDj9SgNwexW
         JLXJDngfUkJCMDdcr8c7WiDE34PlX1bSczPMiVtx3HJLEP5zTMoWUia8U0R2bwLQC3ws
         594lT6lx8QafLsOwkATlYYlU/xvuOkRd4C3VoxaBYK66PvNdovHGt94Jn/47rtzMyXyN
         7C7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to:cc
         :mime-version:content-transfer-encoding;
        bh=ve4DbjpppEqOZDHEQIGMWVuLnH/4TXZbn8TfDjp1ymw=;
        b=c6ihIVUYGxwyxQjrcfRp0biNF3PEiX0wA/AKe1LKf4EfsO2oD3A51Q1lgytbiU1hBJ
         sbgRLP3IjQEDMxw6vp9+NhCAkX5r3HAjEYGlyjiSHbSgbnsjlUr5kpzXot71HvML5zon
         FHaG6zMNYn63J+4fKgJ6i4wCViFC2h4nLHx4NelIw5HrQACIyr0wMiMnUzHX3CLPxX7V
         hLgEMi2rWdgLz6XhDpTGxlEoKnEV4I8XQIAAD3Ge3D3nd6URtY9n1IwmI6F7fEA0rXQS
         LPkj3gcoIv95qZLb0W1R4PNNV7/8eH/EzztgWPj0+gmbzJg0UV0I9pvsoRVvc1YoqjgP
         WExQ==
X-Gm-Message-State: ANhLgQ0rJQ1PhXu3vuC3kmyASsrTHEmoTpVd9Ehx91ORnV8G5hnHw3zD
	8oaDBjY04SYaPQJYQEd86IH1Hl58
X-Google-Smtp-Source: ADFU+vvnpnTwSbPWjFFlHXcp7+Av/2LXoqcVSiS6kMS7/3agUOU58hnHUS3vE2l7lomYfIiyn7Q+uA==
X-Received: by 2002:a17:902:b088:: with SMTP id p8mr3538865plr.106.1584622710743;
        Thu, 19 Mar 2020 05:58:30 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.79.111.245] ([106.78.46.38])
        by smtp.gmail.com with ESMTPSA id md20sm2004508pjb.15.2020.03.19.05.58.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:58:30 -0700 (PDT)
Date: Thu, 19 Mar 2020 18:14:28 +0530
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
X-Priority: 3
Message-ID: <qyspe8-d5c7fm-und9hw-wtrbw9vvoqo465762zsi5fpu796884iedjts-6mc50l1iyhnk-6975kgyc1eyyax5o1w2cauz0aa3ybqud9n4k-4ggfocewvxqe7q3pwt-bv170w-9fsj66cxbp8uvcbe33.1584621868372@email.android.com>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
 <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
 <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com> <20200218090628.GC104502@korppu> <-hhdqq849gh00fpec09-k43vkev29eapwgdmfmrg31wzpc79dq-3ob9vu4ljzio-kfzmy5-k9d9xp-fje67s6nyz1o5020z4-gvie0werwo8p-or1nts-ut4yas-3vp530t7t1ig-wdisaynth1prjt71uh.1582097826706@email.android.com> <15FD60EEC90B82B0.21252@lists.yoctoproject.org>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Khem Raj via Lists.Yoctoproject.Org"
 <raj.khem=gmail.com@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPlBscyBjYW4gYW55IGJvZHkgZ3VpZGUgYW5kIHN1Z2dlc3QgdGhlIHJl
YXNvbiBvZiBpc3N1ZTxicj48YnI+U2VudCBmcm9tIG15IEh1YXdlaSBwaG9uZTwvZGl2PjxkaXYg
c3R5bGU9ImxpbmUtaGVpZ2h0OjEuNSI+PGJyPjxicj4tLS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdl
IC0tLS0tLS0tPGJyPkZyb206ICJhbWF5YSBqaW5kYWwgdmlhIExpc3RzLllvY3RvcHJvamVjdC5P
cmciICZsdDthbWF5YWppbmRhbDc4Nj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZn
dDs8YnI+RGF0ZTogV2VkLCAxOCBNYXIgMjAyMCwgNDozMCBwbTxicj5UbzogIktoZW0gUmFqIHZp
YSBMaXN0cy5Zb2N0b3Byb2plY3QuT3JnIiAmbHQ7cmFqLmtoZW09Z21haWwuY29tQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcmZ3Q7LCB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyPkNjOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyPlN1YmplY3Q6IFJlOiBbeW9jdG9dIElzc3Vl
IHdoaWxlIGFkZGluZyB0aGUgc3VwcG9ydCBmb3IgVExTMS4zIGluIGV4aXN0aW5nIGtyb2dvdGgg
eW9jdG8gI3lvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICNhcHQgI3Jhc3BiZXJyeXBpICN5b2N0
bzxicj48YmxvY2txdW90ZT48ZGl2IGRpcj0iYXV0byI+SGkgQWxswqA8ZGl2PjxiciAvPjwvZGl2
PjxkaXY+wqB3aGlsZSBJIHRyaWVkIHRvIGFkZCBPcGVuc3NoIDcuOHAxIHJlY2lwZSBpbiBrcm9n
b3RoIHlvY3RvLCB0byBhZGQgc3VwcG9ydCBmb3Igb3BlbnNzbCAxLjEuMWIuIEV2ZXJ5IHRoaW5n
IGNvbXBpbGVkIHN1Y2Nlc3NmdWxseSBidXQgbm93IEkgYW0gZ2V0dGluZyBpc3N1ZSB3aGVuIEkg
dHJpZWQgdG8uIHRlc3QgdGhhdCBvbiBib2FyZCwgaXRzIGdldHRpbmcgcmVzdGFydGVkIGV2ZXJ5
IHRpbWUuIFBsZWFzZSBzdWdnZXN0wqA8YnIgLz48YnIgLz5TZW50IGZyb20gbXkgSHVhd2VpIHBo
b25lPC9kaXY+PC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnIgLz48YnIgLz4t
LS0tLS0tLSBPcmlnaW5hbCBtZXNzYWdlIC0tLS0tLS0tPGJyIC8+RnJvbTogYW1heWEgamluZGFs
ICZsdDthbWF5YWppbmRhbDc4NkBnbWFpbC5jb20mZ3Q7PGJyIC8+RGF0ZTogV2VkLCAxOSBGZWIg
MjAyMCwgMTowOSBwbTxiciAvPlRvOiBNaWtrby5SYXBlbGlAYm13LmRlPGJyIC8+Q2M6IGFsZXgu
a2FuYXZpbkBnbWFpbC5jb20sIHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnIgLz5TdWJq
ZWN0OiBSZTogW3lvY3RvXSBJc3N1ZSB3aGlsZSBhZGRpbmcgdGhlIHN1cHBvcnQgZm9yIFRMUzEu
MyBpbiBleGlzdGluZyBrcm9nb3RoIHlvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICN5b2N0byAj
YXB0ICNyYXNwYmVycnlwaSAjeW9jdG88YnIgLz48YmxvY2txdW90ZT48ZGl2IGRpcj0iYXV0byI+
QW55IGtpbmQgb2YgcGF0Y2ggaWYgYXZhaWxhYmxlIHRvIGRpcmVjdGx5IGFwcGx5PyBJIGFtIGdl
dHRpbmcgZXJyb3IgaW4gZ29iamVjdC1pbnRyb3NwZWN0aW9uIG5hdGl2ZSB0aGF0IHNoYTEgc2hh
MjU2IGV0YyBub3QgZm91bmQgaW4gdXNyL2xpYi9weXRob24yIDcvaGFzaGxpYi5weTxiciAvPjxi
ciAvPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48ZGl2IHN0eWxlPSJsaW5lLWhlaWdo
dDoxLjUiPjxiciAvPjxiciAvPi0tLS0tLS0tIE9yaWdpbmFsIG1lc3NhZ2UgLS0tLS0tLS08YnIg
Lz5Gcm9tOiBNaWtrby5SYXBlbGlAYm13LmRlPGJyIC8+RGF0ZTogVHVlLCAxOCBGZWIgMjAyMCwg
MjozNiBwbTxiciAvPlRvOiBhbWF5YWppbmRhbDc4NkBnbWFpbC5jb208YnIgLz5DYzogYWxleC5r
YW5hdmluQGdtYWlsLmNvbSwgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxiciAvPlN1Ympl
Y3Q6IFJlOiBbeW9jdG9dIElzc3VlIHdoaWxlIGFkZGluZyB0aGUgc3VwcG9ydCBmb3IgVExTMS4z
IGluIGV4aXN0aW5nIGtyb2dvdGggeW9jdG8gI3lvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICNh
cHQgI3Jhc3BiZXJyeXBpICN5b2N0bzxiciAvPjxibG9ja3F1b3RlPkhpLDxiciAvPjxiciAvPk9u
IFR1ZSwgRmViIDE4LCAyMDIwIGF0IDAxOjIwOjI1UE0gJiM0MzswNTMwLCBhbWF5YSBqaW5kYWwg
d3JvdGU6PGJyIC8+Jmd0O8KgwqDCoCBUaGFua3MgZm9yIHlvdXIgcHJvbXB0IHJlcGx5LiBCdXQg
aXMgbm90IHRoZXJlIGFueSB3YXkgc2ltaWxhciB0byBhZGQ8YnIgLz4mZ3Q7wqDCoMKgIHN1cHBv
cnQgZm9yIFRMUzEuMyBpbnN0ZWFkIG9mIG1vdmluZyB0byBuZXcgeW9jdG8gcmVsZWFzZXM8YnIg
Lz48YnIgLz5vcGVuc3NsIGlzIHRyaWNreSB0byB1cGRhdGUgYW5kIHJlcXVpcmVzIGJhY2twb3J0
aW5nIGZpeGVzIGZvciBtYW55LCBtYW55IHJlY2lwZXM8YnIgLz50byBnZXQgYnVpbGRzIHBhc3Np
bmcgZXRjLiBEZXBlbmRpbmcgb24gcHJvamVjdCBzaXplLCBpdCBtYXkgYmUgcG9zc2libGU8YnIg
Lz50byB1cGRhdGUgb25seSB0aG9zZSBjb21wb25lbnRzIHdoaWNoIHlvdSB1c2UsIGUuZy4gYmFj
a3BvcnQgY29tbWl0cyBmcm9tPGJyIC8+cG9reSBtYXN0ZXIgb3IgcmVsZWFzZSBicmFuY2hlcyBs
aWtlIHdhcnJpb3IuIFRoZSBudW1iZXIgb2YgYmFja3BvcnRlZCBjaGFuZ2VzPGJyIC8+d2lsbCBi
ZSBsYXJnZS4gSSYjMzk7dmUgcG9ydGVkIG9wZW5zc2wgMS4xLjFkIHBhdGNoZXMgdG8geW9jdG8g
Mi41IHN1bW8gYnV0IGl0IHdhc24mIzM5O3Q8YnIgLz5wcmV0dHkuIEEgc3RyYXRlZ3kgd2l0aCBy
ZWd1bGFyIHlvY3RvIHVwZGF0ZXMgaXMgbXVjaCBiZXR0ZXIgYW5kIGZvcmNlcyB5b3U8YnIgLz50
byB0aGluayBvZiB5b3VyIGRlcGVuZGVuY2llcyBhbmQgcGF0Y2hlcyBtdWNoIGhhcmRlci48YnIg
Lz48YnIgLz5Ib3BlIHRoaXMgaGVscHMsPGJyIC8+PGJyIC8+LU1pa2tvPC9ibG9ja3F1b3RlPjwv
ZGl2PjwvYmxvY2txdW90ZT48L2Rpdj48L2Jsb2NrcXVvdGU+PC9kaXY+

