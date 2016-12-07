Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E10E00D4D; Wed,  7 Dec 2016 08:14:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FBBE00D40
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 08:14:55 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id n204so418396617qke.2
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 08:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WFksXgDeNgulpeM6M3Rj00wSnOb7YsDhBkbCy5OhRVc=;
	b=fzXnprjVFcJw1YRLV5iZiz92FdyzMnTR35eWUZc4Z5bzhPpen1FrbA5it0YedA6A2M
	6mdDhx1kwYYlVtdw4fj6GyLnPHLIQ6T2+vN1TCa9IT5gRZlBo529K9eI5WJxhU7+97tn
	I/5hu7gaDYvAajBvOfYEyTuj6d2DsOYKPliNwyR9/n/K8iLSyizEBdsB86iaifCi/cNl
	5ScYN0PaofHWeMJFcWIw48Y2vKRtS1AQXlCOwh4KyPfpTPStkQQqAH07q77TBkbests4
	KFwDI+NPjIg++Uq4msOK2wFD3XJhNCBk+5Zw6LFEmyo5PtC8o31ygwUPf8LVqz9x9oit
	IbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WFksXgDeNgulpeM6M3Rj00wSnOb7YsDhBkbCy5OhRVc=;
	b=YNk9e7GZko8gX0CJ/v+bXEBKuhNhmY6jUWBic7e3itKDJqciTXTIdHCpsZEcdzMgtt
	OgYllDYR56Gpfa+0g+RhjEg45gKkpasUfsPZ6rC4wb48YuhDKktwXV041zrX/LgpbHa2
	HXhL0u5Q04uNKOKHHtorbUw0FZrCG1PkGkkoJnMABsONwgWq9Llbpr7sxXjRc4czZKtU
	wlBMTPwxhQivPzHVnngnsuN/UZsSQzKSaAL+Delu9TPsxfLftwn4zg7l+B7m4mEgOhJr
	/LOn4NdhO6MFSqsE8RDKXn/NfXZ1qgnTMFcl6D9vPzVDesKystKCBsyuoA3oydvOJiOK
	ehsA==
X-Gm-Message-State: AKaTC02Gy6BfVLrbqkjC+zfcsYS5IQIlrYxkYS4St9zKAmXYYTZe+bYV1HqeqqQtyk4WxnofenwM2XTSnHK7KbeW
X-Received: by 10.55.39.88 with SMTP id n85mr58471448qkn.244.1481127294786;
	Wed, 07 Dec 2016 08:14:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 7 Dec 2016 08:14:34 -0800 (PST)
In-Reply-To: <d9a1a2ab-9791-f15d-24f2-ddbc31dbf0fa@linux.intel.com>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8B7@SESTOEX04.enea.se>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8F6@SESTOEX04.enea.se>
	<d9a1a2ab-9791-f15d-24f2-ddbc31dbf0fa@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Dec 2016 16:14:34 +0000
Message-ID: <CAJTo0LZgwNa=hb=DxeiKzBvw-HbUO8Jtvy6Swdmwh+FZOR6Ujw@mail.gmail.com>
To: Mariano Lopez <mariano.lopez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>
Subject: Re: cve-checker tool
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
X-List-Received-Date: Wed, 07 Dec 2016 16:14:57 -0000
Content-Type: multipart/alternative; boundary=94eb2c094b1646242d054313d2c9

--94eb2c094b1646242d054313d2c9
Content-Type: text/plain; charset=UTF-8

On 7 December 2016 at 14:58, Mariano Lopez <mariano.lopez@linux.intel.com>
wrote:

> > Those CVEs which are listed in the nvd.xml file under
> "cpe:/a:haxx:libcurl: are not detected and reported by cve-check tool.
>
> In the case of libcurl, it is build using the curl recipe, and currently
> cve-check class will look for BPN, so it won't check against libcurl.
> Can you open a bug for this?
>

A fix for this is trivial but we need a variable name.  Any objections or
better suggestions to CVE_PRODUCT?

Ross

--94eb2c094b1646242d054313d2c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 December 2016 at 14:58, Mariano Lopez <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mariano.lopez@linux.intel.com" target=3D"_blank">mariano.lopez@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span c=
lass=3D"">&gt; Those CVEs which are listed in the nvd.xml file under &quot;=
cpe:/a:haxx:libcurl: are not detected and reported by cve-check tool.<br>
<br>
</span>In the case of libcurl, it is build using the curl recipe, and curre=
ntly<br>
cve-check class will look for BPN, so it won&#39;t check against libcurl.<b=
r>
Can you open a bug for this?<br></blockquote></div><br>A fix for this is tr=
ivial but we need a variable name.=C2=A0 Any objections or better suggestio=
ns to CVE_PRODUCT?</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></div>

--94eb2c094b1646242d054313d2c9--
