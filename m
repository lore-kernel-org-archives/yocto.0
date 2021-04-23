Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.7896.1619173741156777525
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 03:29:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ZqRSUVHZ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1619173741; x=1776853741;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=t0G8m38w2DYx2H9HefQf14E41/wmWGPN0hbQTajLiOo=;
  b=ZqRSUVHZjsM7Wnqp4BUPVWCgcTCOY/iy8chZCv0GqPw0HiUbcPpeq8A2
   fj3fub53JdSPXrNfGEeke5YGA/0jAKyLV3Z1lk96yzzTGifyvvOqtgiIe
   7lOiNt+GKHfgeqYbVRyrbjvKqJqm9b2neU00qPA8/k9sEP3PmjDwx8GLg
   s=;
IronPort-SDR: pSygQ089NzBOwDzQZJc0VMFQjLGAldvWRHT8G58p1xOgh0sh12ue7hjhSTlL9NN/ZblRb7+Nuu
 gB6mvE3P+niA==
IronPort-PHdr: =?us-ascii?q?A9a23=3An2wIQxALAYspwwVrvOw7UyQUvkQY04WcBSYlr?=
 =?us-ascii?q?6E/grcLSJyIuqrYVGTh7PlgxGXEQZ/co6odzbaP4ua6ADZLuM/JmUtBWaQEb?=
 =?us-ascii?q?wUCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdF?=
 =?us-ascii?q?RrlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRG7oR/PusULn4duJbs9x?=
 =?us-ascii?q?gbUqXZUZupawn9lK0iOlBjm/Mew+5Bj8yVUu/0/8sNLTLv3caclQ7FGFToqK?=
 =?us-ascii?q?2866tHluhnFVguP+2ATUn4KnRpSAgjK9w/1U5HsuSbnrOV92S2aPcrrTbAoX?=
 =?us-ascii?q?Dmp8qlmRAP0hCoBKjU063/chNBug61HoRKhvx1/zJDSYIGJL/p1Y6fRccoHS?=
 =?us-ascii?q?WZdQspdUipMCZ6+YYQSFeoMJeZWoZfgqVsSoxWwBgesC+HuyjBUiXH50rY30?=
 =?us-ascii?q?/g4EQHEwAAsA84CvGrSod7oNKkSS+e1zKzQwDnNaP1W3jH96JPWfR8/uvGAR?=
 =?us-ascii?q?a97f9fNyUYxCQPKkFOQopH7MjiI0ugCvXWV4+9uWemyjGMnsB1xrSaxxsgyj?=
 =?us-ascii?q?InFnIcVylfC9SVi3ok6O8a4RVVgbtG+DpRQrCGbN5BqQsw8RmFoozw2xaEBu?=
 =?us-ascii?q?Z6+ZSUHzoksyBHDZfKdaYeI/g7jW/iLITd+nH9pZLKxigiw/EauyuDxWMi53?=
 =?us-ascii?q?lZOoydHltTBt3QA2RPX58SZVPdw/Ues1CuN2g7d5e9IPFw5mLfbJZI/3rM9l?=
 =?us-ascii?q?ZUdvELeFSH4n0X2ibWZdkQi+uWw5OTnY6nmpp+BN4BvkA3xLqMumsmnDeU4N?=
 =?us-ascii?q?QgBQ3Sb+eOk1L35+k35QqtFgeEqkqXDt5DaP8sbq6ikCAFWyoYu8wuzAyu83?=
 =?us-ascii?q?NkWn3QLNkxJdAyHgoTzOlzDIOj0Aeqjj1i2nzpmyOrKM7L7DpnQLnXOlqrqc?=
 =?us-ascii?q?6xn5E5G0gUzyMhS55dTCr4cPv3+QlTxtNnEDh8hNAy03vrnBM191owAXWKPB?=
 =?us-ascii?q?beUML/dsFCS4OIvJvKMaYsJtDrhN/Qp+uTijXkjllMHZqamx4UYaGu4H/R9P?=
 =?us-ascii?q?0WWf3/sgswbHWgWuQo+SfTmiFyEUTFNe3a/R78w6i0hBI+oD4rPXJ6hjKKB0?=
 =?us-ascii?q?SuhH5BbZnhKClWWHnfpc4WEVe0MaCWXIsJ5iTwESaauS5E/2hGorgP6zr1nL?=
 =?us-ascii?q?uzP+iIGq53jz8N46PbJmh4s7jx1D9+d032TQGFxhWMEXSM53Kd6oUBl0FeMz?=
 =?us-ascii?q?bB4g+BEFdxU//5IUgA6OoLAz+x9EN3yXgPBfsyVSFa9WNmnATYxQc4tw98Je?=
 =?us-ascii?q?0Z9AdKijhLd0CW2H78ZjbuLBIY78vGU4n7qOswoy2razLJzyB4iQ9BTLiu3g?=
 =?us-ascii?q?aVj8BDJAIzEmFnfkLylMqtbzSnG6GDE0GyVoUsLbQhrTK/5UGADM0vKsczit?=
 =?us-ascii?q?ASFS761Fa9hIwxK1cmaMKxIZ9b1y1JcS7Dsf8XZaH623Hq2HguClY+LOanqd?=
 =?us-ascii?q?mBV5izfQBwemgJV/naLMCAxAy6gpyTVCzk4Rnz1ZEa5u8x5rmi2Q1RwhzqWY?=
 =?us-ascii?q?lNs0fKesl4ovr3WA6cIwr8atSFnrjJyB1uwxPrcAtebthF9caBHJ9g65QEUh?=
 =?us-ascii?q?iriqwVhM8n4fOhZjVkEflEy5hu2vyg=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Apr9D6KHIJ/BjYQTApLqFu5HXdLJzesId70?=
 =?us-ascii?q?hD6mlaTxtJfsuE0/2/hfhz73HJoRsyeFVlo9CPP6GcXWjRnKQe3aA9NaqvNT?=
 =?us-ascii?q?OIhEKGII1u5oPpwXnBNkTFh4hg/Ih6dawWMqyUMXFejdzmpCm0euxQuOWv1a?=
 =?us-ascii?q?CzmKPjyG1wRhthcKFq425Ce3+mO2lXYCUDOpYjDpqb4aN8xgaIXXgMdMy0Cj?=
 =?us-ascii?q?0kcoH4y+Hjr57tbR4YCxNP0mDnsRqS5Kf+A1yk2H4lMw9n+6so8mTOjmXCl8?=
 =?us-ascii?q?aemsy8oyWw60bjq75fnMLoytVFQOyg4/JlSAnEu0KGaIhtULWJvnQUjYiUmT?=
 =?us-ascii?q?EXueiJhy0OFOEb0RjsV1DwhRf2wQHv3HIPxhbZuDulvUc=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BgAAAjoIJg/0HhJQpaHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAmBNwYBCwGDIYFBC5YlA4VphEmEe4tDFIFoCwEBAQEBAQEBAQgBHQ0?=
 =?us-ascii?q?KBAEBgRYBgzkCgXkmNgcOAgMBAQwBAQYBAQEBAQYEAYEDhVANgjgFAgMfAQa?=
 =?us-ascii?q?DXAEBAQQBORQrDAQCAQgNBAQBAQEVCRAhBwkBHQgBAQQOBQgVBIJMBYJVAz6?=
 =?us-ascii?q?mcTV4gTQaAmWDPwGBGIJNDYIngToBgWSFEIZigg1BhDU+gh4rFwICAYEWCAo?=
 =?us-ascii?q?BEgFNE4U5BIFvFBCBSiRQQAEHAU4aZJEkqQlbBwODDolxjAeBZ4UzHhCDUYF?=
 =?us-ascii?q?AiUWFfgOLIIUZoR+DGY8nDAY3hEwCBAIEBQIWgVsHOVxwcIM5CUcXApIdhRS?=
 =?us-ascii?q?FSXMCATUCBgoBAQMJiyNcgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2BgAAAjoIJg/0HhJQpaHQEBAQEJARIBBQUBQAmBNwYBC?=
 =?us-ascii?q?wGDIYFBC5YlA4VphEmEe4tDFIFoCwEBAQEBAQEBAQgBHQ0KBAEBgRYBgzkCg?=
 =?us-ascii?q?XkmNgcOAgMBAQwBAQYBAQEBAQYEAYEDhVANgjgFAgMfAQaDXAEBAQQBORQrD?=
 =?us-ascii?q?AQCAQgNBAQBAQEVCRAhBwkBHQgBAQQOBQgVBIJMBYJVAz6mcTV4gTQaAmWDP?=
 =?us-ascii?q?wGBGIJNDYIngToBgWSFEIZigg1BhDU+gh4rFwICAYEWCAoBEgFNE4U5BIFvF?=
 =?us-ascii?q?BCBSiRQQAEHAU4aZJEkqQlbBwODDolxjAeBZ4UzHhCDUYFAiUWFfgOLIIUZo?=
 =?us-ascii?q?R+DGY8nDAY3hEwCBAIEBQIWgVsHOVxwcIM5CUcXApIdhRSFSXMCATUCBgoBA?=
 =?us-ascii?q?QMJiyNcgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.82,245,1613433600"; 
   d="scan'208";a="368467553"
IronPort-SDR: nvk/jE5zUrwP9CXmGPYqTSY5fnIvPxB04xsynICcoz1+KkFkpbtYccHmQRvodCpj6D7xwnCKrb
 3BqdTOeixj6UwBVWKJpWBgEaRAMtxz2qX7vrPXNqUB23XO98MkteFay5AHBmruYH+OTmYPwIO2
 JZCefDaWkz/Pa8w+kyD2W4C8zjRPhnMDjimqDB5GaWmeTHEtYqPlNxlb/MQa6YPQXKdA6ymop+
 /S/w+7ifCBl5JStlqczp+/VQ1qIcjTzZaiwzb+BNSs5N8y7wg3/fUz0kL6AtKGpQAb9YN15s8r
 gr8=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #sdk #cmake
Thread-Topic: [yocto] #yocto #sdk #cmake
Thread-Index: Adc3p8DXjZ2GOZacQO6IBxhR92MSyQAabOaAAAZ/gcA=
Date: Fri, 23 Apr 2021 10:28:59 +0000
In-Reply-To: <CAMKF1sr3OFPvt_EQ=MweO7MHEw+qm5977zGsfR67=K9O4Penwg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.167875F0E28351A4.10062@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Thanks you...

-----Original Message-----
From: Khem Raj <raj.khem@gmail.com>=20
Sent: Thursday, April 22, 2021 11:23 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #sdk #cmake

External Email Alert

This email has been sent from an account outside of the BAE Systems networ=
k.

Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.  For further i=
nformation on how to spot phishing, access "Cybersecurity OneSpace Page" an=
d report phishing by clicking the button "Report Phishing" on the Outlook t=
oolbar.


take a look at
https://github.com/kraj/meta-clang/blob/master/recipes-core/meta/clang-env=
ironment.inc#L11-L19

perhaps that can be something you might find useful

On Thu, Apr 22, 2021 at 11:51 AM Monsees, Steven C (US) via lists.yoctopro=
ject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> When setting up an SDK, (standard or extensible),  build which will be u=
sing cmake, is there a proper way to pre-configure OEToolchainConfig.cmake =
for ones env/applications ?
>
>
>
> Currently I build the SDK, install, and then manually edit...
>
>
>
> Thanks,
>
> Steve
>
>
>=20
>
