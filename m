Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.1169.1582012373384092091
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 23:52:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPUqAmn+;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: amayajindal786@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id p14so10234642pfn.4
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 23:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:references:from:to:cc:mime-version
         :content-transfer-encoding;
        bh=yBLhGZqiIocmL4GNUmsyJzW8YlI+khMUVn79/Ph9354=;
        b=tPUqAmn+7PtyLRBgV2ortqJN+sB30u3ghvviAGDiGsI+zgU4FmJRWo5VXwBwWVk9Eb
         uFb7V5GcpRCtG3Z+DG8Sr1holQFrCqzltFuHXIPJX3pYLNKEXbE8EPoxQ0d/usTUytUB
         IIWCMaAtPugQsPkYzqnq/ICFT2OeGeB76M7bzxmh/IqB6pYNUltZUG4m2NwX33f8nrz2
         Zg98HnUQGtSUCv9Vnx5E66lxOTMqA3jy/udaYcVfxJzkeqFgJuxHJGiBX4CReIOOs/AJ
         GyM37jiy1yU1eXngwW2z6ZunlDCfkR7/ZCJAGwf/8Bs6ug7B05C1Fp9YevAfQtu1AFYb
         ChUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:references:from:to:cc
         :mime-version:content-transfer-encoding;
        bh=yBLhGZqiIocmL4GNUmsyJzW8YlI+khMUVn79/Ph9354=;
        b=qHozJccUGqoNM+nlTUdEr5kSow1I3eVhb5s0cuKmp1awZ5L97EMUfoqWjYGJHy2xoB
         xUIbYgEomMtvuvuQQFSu2OpzhNHuk+dC1HcZIuwM157HMleqWU6lbsLG2f/G9tTEXAeE
         VCjA3BF7X6RhNjNbo/CkzLCsj10Fb1Wc4lm/5ZKXTvUXVJ8MtrTTa0u9vXDPTNuakjKP
         Lx1zWIc2iM9YGS8cm83fuObL0hVZHk6mT95FmxYVW+THeCL1AIboxiZSu3M0FDGEJvKJ
         dHayelDRlYU1iX1xIO8lGE28twb1TLpU9KhkIsM7K1XY2iotaKoFNLAyA9vF3tDc8qa7
         +D+w==
X-Gm-Message-State: APjAAAWP3XqHrbdE1lltyxNeaMeOUvwA/SHMjgWvcZW8TPL116BSOK8R
	0OV1B2p+j9QFbzc18b0HT5A=
X-Google-Smtp-Source: APXvYqz/8YdFu1+8JNzJv7GbVbZPTzF5znpVSMGkdNVRM6qCv5ViNjMgU8FVn0FmuKjp67r3m+/luw==
X-Received: by 2002:a63:513:: with SMTP id 19mr21796254pgf.28.1582012372835;
        Mon, 17 Feb 2020 23:52:52 -0800 (PST)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.120.20.222] ([106.78.94.155])
        by smtp.gmail.com with ESMTPSA id a17sm2767390pfo.146.2020.02.17.23.52.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 23:52:52 -0800 (PST)
Date: Tue, 18 Feb 2020 13:20:25 +0530
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
X-Priority: 3
Message-ID: <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org> <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
From: amayajindal786@gmail.com
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPlRoYW5rcyBmb3IgeW91ciBwcm9tcHQgcmVwbHkuIEJ1dCBpcyBub3Qg
dGhlcmUgYW55IHdheSBzaW1pbGFyIHRvIGFkZCBzdXBwb3J0IGZvciBUTFMxLjMgaW5zdGVhZCBv
ZiBtb3ZpbmcgdG8gbmV3IHlvY3RvIHJlbGVhc2VzPGJyPjxicj5TZW50IGZyb20gbXkgSHVhd2Vp
IHBob25lPC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnI+PGJyPi0tLS0tLS0t
IE9yaWdpbmFsIG1lc3NhZ2UgLS0tLS0tLS08YnI+RnJvbTogQWxleGFuZGVyIEthbmF2aW4gJmx0
O2FsZXgua2FuYXZpbkBnbWFpbC5jb20mZ3Q7PGJyPkRhdGU6IFR1ZSwgMTggRmViIDIwMjAsIDE6
MTMgcG08YnI+VG86IGFtYXlhamluZGFsNzg2QGdtYWlsLmNvbTxicj5DYzogeW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZzxicj5TdWJqZWN0OiBSZTogW3lvY3RvXSBJc3N1ZSB3aGlsZSBhZGRp
bmcgdGhlIHN1cHBvcnQgZm9yIFRMUzEuMyBpbiBleGlzdGluZyBrcm9nb3RoIHlvY3RvICN5b2N0
byAjeW9jdG8gI3lvY3RvICN5b2N0byAjYXB0ICNyYXNwYmVycnlwaSAjeW9jdG88YnI+PGJsb2Nr
cXVvdGU+PGRpdiBkaXI9Imx0ciI+PGRpdj5CYWNrcG9ydGluZyBjb3JlIHBpZWNlcyBhY3Jvc3Mg
bWFueSB5b2N0byByZWxlYXNlcyBpcyBiYXNpY2FsbHkgaW1wb3NzaWJsZS4gWW91IG1vcmUgb3Ig
bGVzcyBlbmQgdXAgaGF2aW5nIHRvIG1vdmUgYW5kIGludGVncmF0ZSBoYWxmIG9mIHRoZSBzdGFj
aywgd2hpY2ggaXMgYSBoZXJjdWxlYW4gdGFzay48L2Rpdj48ZGl2PjxiciAvPjwvZGl2PjxkaXY+
VGhlIGNvcnJlY3Qgd2F5IHRvIGFwcHJvYWNoIHRoaXMgaXMgdG8gaGF2ZSBhIHN0cmF0ZWd5IGFu
ZCBwbGFuIGZvciBtaWdyYXRpbmcgdG8gbmV3ZXIgeW9jdG8gcmVsZWFzZXMuIEludmVzdGlnYXRl
IHdoYXQgeW91IG5lZWQgdG8gdG8gZG8gdG8gbW92ZSB0byB0aHVkLCBvciBuZXdlciwgYmVjYXVz
ZSB0aHVkIGlzIG5vdCBhIHN1cHBvcnRlZCByZWxlYXNlIGFueW1vcmUuPGJyIC8+PC9kaXY+PGRp
dj48YnIgLz48L2Rpdj48ZGl2PkFsZXg8YnIgLz48L2Rpdj48L2Rpdj48YnIgLz48ZGl2IGNsYXNz
PSJlbGlkZWQtdGV4dCI+PGRpdiBkaXI9Imx0ciI+T24gVHVlLCAxOCBGZWIgMjAyMCBhdCAwODoy
NSwgJmx0OzxhIGhyZWY9Im1haWx0bzphbWF5YWppbmRhbDc4NkBnbWFpbC5jb20iPmFtYXlhamlu
ZGFsNzg2QGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxiciAvPjwvZGl2PjxibG9ja3F1b3RlIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigg
MjA0ICwgMjA0ICwgMjA0ICk7cGFkZGluZy1sZWZ0OjFleCI+SSBhbSB1c2luZyBjdXJyZW50bHkg
a3JvZ290aCB5b2N0byBmb3IgbXkgY3VycmVudCBBcm0gYmFzZWQgYm9hcmQuIEkgYW0gaGF2aW5n
IGN1cnJlbnRseSBvcGVuc3NsIDEuMC4yaCBhbmQgcmVsYXRlZCByZWNpcGVzIGZyb20gY3VycmVu
dCB2ZXJzaW9uIGJ1dCB3aGVuIEkgd2FudCB0byBhZGQgVExzIDEuMyB0aGF0IGlzIG9wZW5zc2wg
MS4xLjFhL2IvcHJlIGV0YyBmcm9tIGF2YWlsYWJsZSB5b2N0byBzb3VyY2Ugb3IgZnJvbSB0aHVk
MjAuIDAgeW9jdG8gSSBhbSBnZXR0aW5nIGxvdCBvZiBpc3N1ZXMuIEZpcnN0IG9mIGFsbCBJIGhh
ZCB0byBjaGFuZ2UgcnBtIDQuMTQuIDIgZnJvbSBjdXJyZW50IDUuNC4xNi4gQWZ0ZXIgc29tZSB0
aW1lIEkgZ290IGVycm9yIGluIGdvYmplY3QtaW50cm9zcGVjdGlvbiByZWNpcGUgMS40NiB2ZXJz
aW9uIHRoYXQgc2hhMSBzaGEyNTYgaGFzaCBub3QgZm91bmQgd2hlbiB0cnkgdG8gc2VhcmNoIGlu
IHB5dGhvbiAyLjcuMiBQbGVhc2UgZ3VpZGUNCi0mIzYxOy0mIzYxOy0mIzYxOy0mIzYxOy0mIzYx
Oy0mIzYxOy0mIzYxOy0mIzYxOy0mIzYxOy0mIzYxOy0mIzYxOy08YnIgLz4NCkxpbmtzOiBZb3Ug
cmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLjxiciAvPg0KPGJyIC8+DQpW
aWV3L1JlcGx5IE9ubGluZSAoIzQ4NDY0KTogPGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3By
b2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS80ODQ2NCI+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2cveW9jdG8vbWVzc2FnZS80ODQ2NDwvYT48YnIgLz4NCk11dGUgVGhpcyBUb3BpYzog
PGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzcxMzY3MTY5LzE2ODY0
ODkiPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC83MTM2NzE2OS8xNjg2NDg5PC9h
PjxiciAvPg0KTXV0ZSAjeW9jdG86IDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9taz9oYXNodGFnJiM2MTt5b2N0byZhbXA7c3ViaWQmIzYxOzY2OTE1NTAiPmh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9taz9oYXNodGFnJiM2MTt5b2N0byZhbXA7c3ViaWQmIzYx
OzY2OTE1NTA8L2E+PGJyIC8+DQpNdXRlICNhcHQ6IDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZy9taz9oYXNodGFnJiM2MTthcHQmYW1wO3N1YmlkJiM2MTs2NjkxNTUwIj5o
dHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbWs/aGFzaHRhZyYjNjE7YXB0JmFtcDtzdWJp
ZCYjNjE7NjY5MTU1MDwvYT48YnIgLz4NCk11dGUgI3Jhc3BiZXJyeXBpOiA8YSBocmVmPSJodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbWs/aGFzaHRhZyYjNjE7cmFzcGJlcnJ5cGkmYW1w
O3N1YmlkJiM2MTs2NjkxNTUwIj5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbWs/aGFz
aHRhZyYjNjE7cmFzcGJlcnJ5cGkmYW1wO3N1YmlkJiM2MTs2NjkxNTUwPC9hPjxiciAvPg0KR3Jv
dXAgT3duZXI6IDxhIGhyZWY9Im1haWx0bzp5b2N0byUyQm93bmVyQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmciPnlvY3RvJiM0Mztvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnPC9hPjxiciAvPg0K
VW5zdWJzY3JpYmU6IDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lv
Y3RvL3Vuc3ViIj5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1Yjwv
YT7CoCBbPGEgaHJlZj0ibWFpbHRvOmFsZXgua2FuYXZpbkBnbWFpbC5jb20iPmFsZXgua2FuYXZp
bkBnbWFpbC5jb208L2E+XTxiciAvPg0KLSYjNjE7LSYjNjE7LSYjNjE7LSYjNjE7LSYjNjE7LSYj
NjE7LSYjNjE7LSYjNjE7LSYjNjE7LSYjNjE7LSYjNjE7LTxiciAvPg0KPC9ibG9ja3F1b3RlPjwv
ZGl2Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg==

