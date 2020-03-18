Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.12198.1584529222248531382
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 04:00:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nScKFZZG;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: amayajindal786@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id 2so13685018pfg.12;
        Wed, 18 Mar 2020 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:cc:mime-version
         :content-transfer-encoding;
        bh=wuA60tqnsoKrTcNc3fEv2Mrvn2cjPXI3Hbb34JMOvaU=;
        b=nScKFZZG80MX0yQMTVWdWZbM99MfaCR5k45e7//Hxsv6oW/Crgw3z+bXQZk+sMO77c
         I7pGC0XKr1JEt5C7AqoR15uZFaQ1+7BoPVZX0VKWGbjW3VsVhzhPy+7TCbCLafJE3S2Z
         JjxV2YARlD/JMuT++C8p5ZuD1VoFrK8VpTfF2DThEa/lQg8QD6Y3NfAXxmoSKtbpR7cR
         jaSpwlzUWCzKKXSeqo+M0FVE4T7bkUePKfkAi6ML1b+/GPq6pR3NpM14hPI9js9zoQOX
         cfn/fVKf5B876fr1u8bd7+caMTnHhhUEZVLihdJh53/QQhdWNW8ANhGVaZ1u4jzc/F7z
         sjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to:cc
         :mime-version:content-transfer-encoding;
        bh=wuA60tqnsoKrTcNc3fEv2Mrvn2cjPXI3Hbb34JMOvaU=;
        b=ocBXEbw+6Fm2uSHrYqxnGVsTHrYjPO4IQCy3l8Pq4/tSqqV4nMnOE+k7nrp4TMSMHi
         ZX9DHu0+bDoQLYORmPaSwE26WvZutvwePbfcT2bRdONUjKwBXXD/IME8Vazi2kVy0PGa
         1AmNHC5og4MymDr0bC/+tQEY0+I+iI+/ta6AAyaNV5ic2a+BGRcZyccBweEns+9yzhcu
         dq0TLuziHZqht9nSXSVhThDKYdFoMqm9vjNaafyXOHGqijdJatBbcE7+OeG53ojhbYVJ
         nlcdBYte8Wl0iRwA2PnBKMiBL1t+gCdOOzEpmYuDWKScerHutzymXZFcfw05neeGkhYO
         /qHQ==
X-Gm-Message-State: ANhLgQ1OLQkhdgByLawJmBFjrTcHutZy01mYeXuuMMClMeiJRLQZs8qG
	fcXdfTIgn05DovXbXlktQk6D0oAe
X-Google-Smtp-Source: ADFU+vvJEG3UGAhtNz5Ep9gK1DDQ8XEqW8Fv8xoFWfXJcJD4+Kckg12TL56IMjUHsAUlRLvgC5PjkA==
X-Received: by 2002:a63:b515:: with SMTP id y21mr4030673pge.148.1584529221260;
        Wed, 18 Mar 2020 04:00:21 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.123.244.186] ([106.78.58.139])
        by smtp.gmail.com with ESMTPSA id i2sm2084953pjs.21.2020.03.18.04.00.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 04:00:20 -0700 (PDT)
Date: Wed, 18 Mar 2020 16:30:15 +0530
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
X-Priority: 3
Message-ID: <-8cegkewagzkw1uh9s9-j2firr-dof6b8vzwm6zfxpwy-qkad0y-8e5wb0io04so-yek86j-sklif6-acq0porahm0z-m4n1vt9t37iu-fmli1u8raogf-pqv448rsio5a3qq6pryv47iy-k5z21b-s11d5f.1584529130912@email.android.com>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
 <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
 <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com> <20200218090628.GC104502@korppu> <-hhdqq849gh00fpec09-k43vkev29eapwgdmfmrg31wzpc79dq-3ob9vu4ljzio-kfzmy5-k9d9xp-fje67s6nyz1o5020z4-gvie0werwo8p-or1nts-ut4yas-3vp530t7t1ig-wdisaynth1prjt71uh.1582097826706@email.android.com>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Khem Raj via Lists.Yoctoproject.Org"
 <raj.khem=gmail.com@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>
Cc: "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkhpIEFsbCZuYnNwOzxkaXY+PGJyPjwvZGl2PjxkaXY+Jm5ic3A7d2hp
bGUgSSB0cmllZCB0byBhZGQgT3BlbnNzaCA3LjhwMSByZWNpcGUgaW4ga3JvZ290aCB5b2N0bywg
dG8gYWRkIHN1cHBvcnQgZm9yIG9wZW5zc2wgMS4xLjFiLiBFdmVyeSB0aGluZyBjb21waWxlZCBz
dWNjZXNzZnVsbHkgYnV0IG5vdyBJIGFtIGdldHRpbmcgaXNzdWUgd2hlbiBJIHRyaWVkIHRvLiB0
ZXN0IHRoYXQgb24gYm9hcmQsIGl0cyBnZXR0aW5nIHJlc3RhcnRlZCBldmVyeSB0aW1lLiBQbGVh
c2Ugc3VnZ2VzdCZuYnNwOzxicj48YnI+U2VudCBmcm9tIG15IEh1YXdlaSBwaG9uZTwvZGl2Pjwv
ZGl2PjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNSI+PGJyPjxicj4tLS0tLS0tLSBPcmlnaW5h
bCBtZXNzYWdlIC0tLS0tLS0tPGJyPkZyb206IGFtYXlhIGppbmRhbCAmbHQ7YW1heWFqaW5kYWw3
ODZAZ21haWwuY29tJmd0Ozxicj5EYXRlOiBXZWQsIDE5IEZlYiAyMDIwLCAxOjA5IHBtPGJyPlRv
OiBNaWtrby5SYXBlbGlAYm13LmRlPGJyPkNjOiBhbGV4LmthbmF2aW5AZ21haWwuY29tLCB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPGJyPlN1YmplY3Q6IFJlOiBbeW9jdG9dIElzc3VlIHdo
aWxlIGFkZGluZyB0aGUgc3VwcG9ydCBmb3IgVExTMS4zIGluIGV4aXN0aW5nIGtyb2dvdGggeW9j
dG8gI3lvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICNhcHQgI3Jhc3BiZXJyeXBpICN5b2N0bzxi
cj48YmxvY2txdW90ZT48ZGl2IGRpcj0iYXV0byI+QW55IGtpbmQgb2YgcGF0Y2ggaWYgYXZhaWxh
YmxlIHRvIGRpcmVjdGx5IGFwcGx5PyBJIGFtIGdldHRpbmcgZXJyb3IgaW4gZ29iamVjdC1pbnRy
b3NwZWN0aW9uIG5hdGl2ZSB0aGF0IHNoYTEgc2hhMjU2IGV0YyBub3QgZm91bmQgaW4gdXNyL2xp
Yi9weXRob24yIDcvaGFzaGxpYi5weTxicj48YnI+U2VudCBmcm9tIG15IEh1YXdlaSBwaG9uZTwv
ZGl2PjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNSI+PGJyPjxicj4tLS0tLS0tLSBPcmlnaW5h
bCBtZXNzYWdlIC0tLS0tLS0tPGJyPkZyb206IE1pa2tvLlJhcGVsaUBibXcuZGU8YnI+RGF0ZTog
VHVlLCAxOCBGZWIgMjAyMCwgMjozNiBwbTxicj5UbzogYW1heWFqaW5kYWw3ODZAZ21haWwuY29t
PGJyPkNjOiBhbGV4LmthbmF2aW5AZ21haWwuY29tLCB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPGJyPlN1YmplY3Q6IFJlOiBbeW9jdG9dIElzc3VlIHdoaWxlIGFkZGluZyB0aGUgc3VwcG9y
dCBmb3IgVExTMS4zIGluIGV4aXN0aW5nIGtyb2dvdGggeW9jdG8gI3lvY3RvICN5b2N0byAjeW9j
dG8gI3lvY3RvICNhcHQgI3Jhc3BiZXJyeXBpICN5b2N0bzxicj48YmxvY2txdW90ZT5IaSw8YnI+
PGJyPk9uIFR1ZSwgRmViIDE4LCAyMDIwIGF0IDAxOjIwOjI1UE0gKzA1MzAsIGFtYXlhIGppbmRh
bCB3cm90ZTo8YnI+Jmd0OyZuYnNwOyZuYnNwOyZuYnNwOyBUaGFua3MgZm9yIHlvdXIgcHJvbXB0
IHJlcGx5LiBCdXQgaXMgbm90IHRoZXJlIGFueSB3YXkgc2ltaWxhciB0byBhZGQ8YnI+Jmd0OyZu
YnNwOyZuYnNwOyZuYnNwOyBzdXBwb3J0IGZvciBUTFMxLjMgaW5zdGVhZCBvZiBtb3ZpbmcgdG8g
bmV3IHlvY3RvIHJlbGVhc2VzPGJyPjxicj5vcGVuc3NsIGlzIHRyaWNreSB0byB1cGRhdGUgYW5k
IHJlcXVpcmVzIGJhY2twb3J0aW5nIGZpeGVzIGZvciBtYW55LCBtYW55IHJlY2lwZXM8YnI+dG8g
Z2V0IGJ1aWxkcyBwYXNzaW5nIGV0Yy4gRGVwZW5kaW5nIG9uIHByb2plY3Qgc2l6ZSwgaXQgbWF5
IGJlIHBvc3NpYmxlPGJyPnRvIHVwZGF0ZSBvbmx5IHRob3NlIGNvbXBvbmVudHMgd2hpY2ggeW91
IHVzZSwgZS5nLiBiYWNrcG9ydCBjb21taXRzIGZyb208YnI+cG9reSBtYXN0ZXIgb3IgcmVsZWFz
ZSBicmFuY2hlcyBsaWtlIHdhcnJpb3IuIFRoZSBudW1iZXIgb2YgYmFja3BvcnRlZCBjaGFuZ2Vz
PGJyPndpbGwgYmUgbGFyZ2UuIEkndmUgcG9ydGVkIG9wZW5zc2wgMS4xLjFkIHBhdGNoZXMgdG8g
eW9jdG8gMi41IHN1bW8gYnV0IGl0IHdhc24ndDxicj5wcmV0dHkuIEEgc3RyYXRlZ3kgd2l0aCBy
ZWd1bGFyIHlvY3RvIHVwZGF0ZXMgaXMgbXVjaCBiZXR0ZXIgYW5kIGZvcmNlcyB5b3U8YnI+dG8g
dGhpbmsgb2YgeW91ciBkZXBlbmRlbmNpZXMgYW5kIHBhdGNoZXMgbXVjaCBoYXJkZXIuPGJyPjxi
cj5Ib3BlIHRoaXMgaGVscHMsPGJyPjxicj4tTWlra288L2Jsb2NrcXVvdGU+PC9kaXY+PC9ibG9j
a3F1b3RlPjwvZGl2Pg==

