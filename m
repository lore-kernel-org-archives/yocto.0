Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF74E01106; Fri,  6 Jul 2018 08:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D79EE00CDE
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 08:25:17 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id s21-v6so8734745pfm.6
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=zTFjoPI0nAxxB9yw0sKeVll7bZ+PRJx8vEwX1j+ZzPw=;
	b=iQqIyt8lNBTZL+sJwsX89mWHCBFyr5SZA9BsUGzPITxMjJ0TbGtjSkFsJJ8a+/FdpK
	NQQ0dL3hBuiivd5UaIJckaCPlINWXwJgtQUsyVIRVMVBvIbur2yFBQkbjnopsWy2RV9e
	w5RllPrQwAsQqZCAFbEM3s94hNB4Z5Iibx1AlLaYXfgtb+ZvqYvpFWkWU3s9J4s4OmCS
	MiQfXkQmdFE/KuXzteb7vvvGV4dTHw8KObXndTDDuDS5zY71brjobBcuCLwlKjKOLpkH
	zc5Yjvy3Rc8WVBEyhXu6bYW6OWkC92AzbFXlgQwnZNCnySvwwxoVXiD3NzR7JozNrSyn
	o9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=zTFjoPI0nAxxB9yw0sKeVll7bZ+PRJx8vEwX1j+ZzPw=;
	b=fQQScXNtrIyQY5IJIwzeerVCb2YgyyJ1gGAU2C707LY9D21zw6GDiD3aiUhg0mF0wD
	TNdwZMm3iGkX6UPCxB3iD+pAlvvWKXFjZoyRYwogbFrZXtlAV+UWbWGCi0/pSo7R9hHV
	NHnWSq3Vc9qzbNHWjkARhbi+iSO5kSNKZbLJJVzQsMPYNiNzoNa5t8nh88+6vZcofM7l
	1L/XUfMhB9/jK0hnYuX0o+NFJUbAbUeuJJTp0Z3qz/a3tzqj9pP9FawZZTtYAJ3qfla1
	VLmRMSQPWwn6lAl2tRWb4XILwpGZCwXpqFV2fgmHp0J9uz2xwAmKerS21i/o6X7nA0MQ
	THrw==
X-Gm-Message-State: APt69E3Lftunh4N6/F2BHaQ0wZqvoih6oDdMohTAEUBJAI8/aDPXTElP
	7WFdQ+AdH9Jq5I3Gyh3j4SH5H7Hg
X-Google-Smtp-Source: AAOMgpcZsKYy9apCsfyRT2S7Hr275ZmAVNN9vfmpcjxfAs6D63gd7eueTdnUy3fW/AD9BUJJjwRVBw==
X-Received: by 2002:a65:6398:: with SMTP id
	h24-v6mr9848623pgv.245.1530890716560; 
	Fri, 06 Jul 2018 08:25:16 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	t3-v6sm16626387pfk.161.2018.07.06.08.25.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Jul 2018 08:25:15 -0700 (PDT)
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <6accda8b-0630-94cb-36c9-a61d7e6c629f@gmail.com>
Date: Fri, 6 Jul 2018 08:25:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
Subject: Re: Keeping and modifying Source code in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2018 15:25:18 -0000
X-Groupsio-MsgNum: 41650
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="UREO9D9s94Q0plUetyqpUAs3t27XPeQSk"

--UREO9D9s94Q0plUetyqpUAs3t27XPeQSk
Content-Type: multipart/mixed; boundary="wUmTWRvBUJ4qqPzaOaICmuZCCGKXoHbD0";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
Message-ID: <6accda8b-0630-94cb-36c9-a61d7e6c629f@gmail.com>
Subject: Re: [yocto] Keeping and modifying Source code in Yocto
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
In-Reply-To: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>

--wUmTWRvBUJ4qqPzaOaICmuZCCGKXoHbD0
Content-Type: multipart/alternative;
 boundary="------------A7FB250510987D580FF0C955"
Content-Language: en-US

--------------A7FB250510987D580FF0C955
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Simon,

> Is there a way to keep the source code of a package to be able to
modify it and then compile?

Yes, there is. devtool greatly simplifies this type of workflow. Please
refer to
https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#using-=
devtool-in-your-sdk-workflow
for details.

:rjs


On 07/06/2018 08:20 AM, Simon Chamlian wrote:
> Hi,
>
> Is there a way to keep the source code of a package to be able to
> modify it and then compile?
>
> For example, with LTIB ( Linux Target Image Builder ), it was possible
> with a command to extract the source code from a package, make
> modifications and then re-compile?
>
> Thanks,
> S
>
>
>
>
>
>
>

--=20
Rudolf J Streif


--------------A7FB250510987D580FF0C955
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Simon,</p>
    <p>&gt; Is there a way to keep the source code of a package to be
      able to modify it and then compile?</p>
    <p>Yes, there is. devtool greatly simplifies this type of workflow.
      Please refer to
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/d=
ocs/2.5/mega-manual/mega-manual.html#using-devtool-in-your-sdk-workflow">=
https://www.yoctoproject.org/docs/2.5/mega-manual/mega-manual.html#using-=
devtool-in-your-sdk-workflow</a>
      for details.</p>
    <p>:rjs<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 07/06/2018 08:20 AM, Simon Chamlian=

      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>Is there a way to keep the source code of a package to be
          able to modify it and then compile?</div>
        <div><br>
        </div>
        <div>For example, with LTIB (
          <span>Linux Target Image Builder</span>
          ), it was possible with a command to extract the source code
          from a package, make modifications and then re-compile?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>S<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
      <!--'"--><br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif</pre>
  </body>
</html>

--------------A7FB250510987D580FF0C955--

--wUmTWRvBUJ4qqPzaOaICmuZCCGKXoHbD0--

--UREO9D9s94Q0plUetyqpUAs3t27XPeQSk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAls/idoACgkQhnUrlOPR
ybo/vgf7BeSMaCpkSUHpM6AgdWX4BWIDBf/Jo6nOoel9JZ+nyddNWhcn72Ne9q1/
iOgDlE2VmZSU5IRbYEFi1mL/ZqRUZ4Axzs44+N/Y6alQilE7hRvYGvXBOi/vzxrh
+6dH9nu/OEi4CHJRNIty/KRSrTSgfKQ+VeTXpzj4pTi0NyszO2SB8WaeuoLl/Ny5
GdLoV7BEU52DFNK8M7SN3L6UFawxPLnYE2BhHHZLAu85BT0E2y48tdY0bwnU7PR6
pCbq7N6+u+kizLwYJfxgg8rYUIMrLm+xTSE3+TDHWc6QFcrotY1m/gfWSsTiKxUD
yxg0iaCcnhSyY39sdF/k7DP0g9PYgw==
=HNy+
-----END PGP SIGNATURE-----

--UREO9D9s94Q0plUetyqpUAs3t27XPeQSk--
