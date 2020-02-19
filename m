Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.9074.1582097962682168047
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 23:39:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q5Cu7KD7;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: amayajindal786@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id u12so11926399pgb.10
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 23:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:cc:mime-version
         :content-transfer-encoding;
        bh=A91TNxEN9BehgEc8G+5xuKCDURg9msOQklOCD1KyaUM=;
        b=q5Cu7KD7gn5Rlji9swM4HimZpZZjmYAM3Wt0uzEoFeiviolpir4VdusbLn6ZFaKQki
         O5m/bCk0WM35AAnEPfENmUofTN7WzpPa1CDMJ5nolg1/I+Lzjw4jxPMeH4EEHXr31wuV
         3fFhJ897qnzegGV6OCwn+qUkOg2jhHna991qiFPuLIFsZ1MZTBacvwgLpDpAImFjfs9E
         PuZK3Nj22+ranKRiQk0cLS9fdsBp4GEYmM2mP8u3dcKUbyMsB26bZF5HVcMSwCXlX/Vx
         4Lhismp15M4PxAibdmWkYdopHsuC4aNX6mRPCGq8iMBXJ+hfmeteDr3wGJjBFRlxA+iA
         clxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to:cc
         :mime-version:content-transfer-encoding;
        bh=A91TNxEN9BehgEc8G+5xuKCDURg9msOQklOCD1KyaUM=;
        b=EO+4DA/TtbjO451EAxbkmHgShfgd849sS2VkyxRpHWXgT5u4s2ESKsskuGAsY0C11f
         MDloMRbc5fWblRUHIcewZMFQrfApLxSd50Ad5fW47K2pmMiHxN110EC7nH6aI37Mhvkg
         RSZQTQGzSFW0it9efLKdLqHuO5j5IW1LUKeo5ZcQeguM9P74VxhIAyEwf4VANDdyZO90
         UYO9jpXUUEH5F13uKytib+vLh6CiaccjEMNxkltpF1mjB3NgRSP9IkPOGD0ke/sD0h4g
         iwwru7Arp3LM6pw5SuM8vtiQ8l7lCQIOKEUxaHIAysSGlI8ABmFOV+Xov5HAULZd7jia
         vuyQ==
X-Gm-Message-State: APjAAAVg23v2WsAeaVYDolt8JlYmQM6JAXfulOnKG4J3bbu8BrWyqVMM
	RuNtqUyvnlygTyMCAThVaig=
X-Google-Smtp-Source: APXvYqyUKaOhLa139zAuyfI2JpJFGLk+YxYAP2be3pFzVs7HTyh+jWIKcStlXaYA8pwr8RWxBJlEvg==
X-Received: by 2002:a63:d710:: with SMTP id d16mr26468243pgg.393.1582097962069;
        Tue, 18 Feb 2020 23:39:22 -0800 (PST)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.69.21.35] ([49.14.108.128])
        by smtp.gmail.com with ESMTPSA id g16sm1495528pgb.54.2020.02.18.23.39.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2020 23:39:21 -0800 (PST)
Date: Wed, 19 Feb 2020 13:09:00 +0530
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
X-Priority: 3
Message-ID: <-hhdqq849gh00fpec09-k43vkev29eapwgdmfmrg31wzpc79dq-3ob9vu4ljzio-kfzmy5-k9d9xp-fje67s6nyz1o5020z4-gvie0werwo8p-or1nts-ut4yas-3vp530t7t1ig-wdisaynth1prjt71uh.1582097826706@email.android.com>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
 <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
 <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com> <20200218090628.GC104502@korppu>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Mikko.Rapeli@bmw.de" <Mikko.Rapeli@bmw.de>
Cc: "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkFueSBraW5kIG9mIHBhdGNoIGlmIGF2YWlsYWJsZSB0byBkaXJlY3Rs
eSBhcHBseT8gSSBhbSBnZXR0aW5nIGVycm9yIGluIGdvYmplY3QtaW50cm9zcGVjdGlvbiBuYXRp
dmUgdGhhdCBzaGExIHNoYTI1NiBldGMgbm90IGZvdW5kIGluIHVzci9saWIvcHl0aG9uMiA3L2hh
c2hsaWIucHk8YnI+PGJyPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48ZGl2IHN0eWxl
PSJsaW5lLWhlaWdodDoxLjUiPjxicj48YnI+LS0tLS0tLS0gT3JpZ2luYWwgbWVzc2FnZSAtLS0t
LS0tLTxicj5Gcm9tOiBNaWtrby5SYXBlbGlAYm13LmRlPGJyPkRhdGU6IFR1ZSwgMTggRmViIDIw
MjAsIDI6MzYgcG08YnI+VG86IGFtYXlhamluZGFsNzg2QGdtYWlsLmNvbTxicj5DYzogYWxleC5r
YW5hdmluQGdtYWlsLmNvbSwgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxicj5TdWJqZWN0
OiBSZTogW3lvY3RvXSBJc3N1ZSB3aGlsZSBhZGRpbmcgdGhlIHN1cHBvcnQgZm9yIFRMUzEuMyBp
biBleGlzdGluZyBrcm9nb3RoIHlvY3RvICN5b2N0byAjeW9jdG8gI3lvY3RvICN5b2N0byAjYXB0
ICNyYXNwYmVycnlwaSAjeW9jdG88YnI+PGJsb2NrcXVvdGU+SGksPGJyPjxicj5PbiBUdWUsIEZl
YiAxOCwgMjAyMCBhdCAwMToyMDoyNVBNICswNTMwLCBhbWF5YSBqaW5kYWwgd3JvdGU6PGJyPiZn
dDsmbmJzcDsmbmJzcDsmbmJzcDsgVGhhbmtzIGZvciB5b3VyIHByb21wdCByZXBseS4gQnV0IGlz
IG5vdCB0aGVyZSBhbnkgd2F5IHNpbWlsYXIgdG8gYWRkPGJyPiZndDsmbmJzcDsmbmJzcDsmbmJz
cDsgc3VwcG9ydCBmb3IgVExTMS4zIGluc3RlYWQgb2YgbW92aW5nIHRvIG5ldyB5b2N0byByZWxl
YXNlczxicj48YnI+b3BlbnNzbCBpcyB0cmlja3kgdG8gdXBkYXRlIGFuZCByZXF1aXJlcyBiYWNr
cG9ydGluZyBmaXhlcyBmb3IgbWFueSwgbWFueSByZWNpcGVzPGJyPnRvIGdldCBidWlsZHMgcGFz
c2luZyBldGMuIERlcGVuZGluZyBvbiBwcm9qZWN0IHNpemUsIGl0IG1heSBiZSBwb3NzaWJsZTxi
cj50byB1cGRhdGUgb25seSB0aG9zZSBjb21wb25lbnRzIHdoaWNoIHlvdSB1c2UsIGUuZy4gYmFj
a3BvcnQgY29tbWl0cyBmcm9tPGJyPnBva3kgbWFzdGVyIG9yIHJlbGVhc2UgYnJhbmNoZXMgbGlr
ZSB3YXJyaW9yLiBUaGUgbnVtYmVyIG9mIGJhY2twb3J0ZWQgY2hhbmdlczxicj53aWxsIGJlIGxh
cmdlLiBJJ3ZlIHBvcnRlZCBvcGVuc3NsIDEuMS4xZCBwYXRjaGVzIHRvIHlvY3RvIDIuNSBzdW1v
IGJ1dCBpdCB3YXNuJ3Q8YnI+cHJldHR5LiBBIHN0cmF0ZWd5IHdpdGggcmVndWxhciB5b2N0byB1
cGRhdGVzIGlzIG11Y2ggYmV0dGVyIGFuZCBmb3JjZXMgeW91PGJyPnRvIHRoaW5rIG9mIHlvdXIg
ZGVwZW5kZW5jaWVzIGFuZCBwYXRjaGVzIG11Y2ggaGFyZGVyLjxicj48YnI+SG9wZSB0aGlzIGhl
bHBzLDxicj48YnI+LU1pa2tvPC9ibG9ja3F1b3RlPjwvZGl2Pg==

