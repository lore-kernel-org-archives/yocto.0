Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B6A4E00750; Mon,  9 Mar 2015 10:35:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AC83E003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 10:35:13 -0700 (PDT)
Received: by qcwb13 with SMTP id b13so30907620qcw.12
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 10:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fe0DLouVi7kLOY4OMNfIhs+sZyDlTq9aPXRVFMBzMOc=;
	b=j8qfGCNIBKPYi6iak5HepOrRj7C0bqj3N9Xk9d74uBfkQzkSjWlE0QillYMBnlCz1v
	gzqAiCfjte9YWdoFSMNlvSwpiKFbp3x2ZsAcwLyTga7/6Vq2f7K78b8B4rUagGlcMZTc
	2yYswpB8aOcB0pOP/79rGG+k+4hEADCLwEFFkNO7yqGgZB49U7MRHnZ+euC1O0CeO4o/
	IWbOzWXoPbO9MTg0r1JU7e4pYb6yz6P5zZrF+hZXHr6cglEVYIYYjiEKt5iFGq/egcMH
	d29fgNOwhETE55BoR8ST2Q1J5Jw6EQH4L/08zhG6ferobd1klqD4eRuokn+IdHEjp2M6
	efOg==
X-Gm-Message-State: ALoCoQlmPj9EQ5wxAfprfDoAFjjD07Y5PZ+TrFE8WBwNkceFtFyfIU6vZZeDk/92CJlQZxffykiu
X-Received: by 10.55.26.222 with SMTP id l91mr31760179qkh.32.1425922512880;
	Mon, 09 Mar 2015 10:35:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 9 Mar 2015 10:34:52 -0700 (PDT)
In-Reply-To: <loom.20150309T171019-54@post.gmane.org>
References: <loom.20150309T171019-54@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Mar 2015 17:34:52 +0000
Message-ID: <CAJTo0LZSqxRZ7uyQ42rtuuqfrzjn2wr8+5Fvb2paxa5WhA9fvg@mail.gmail.com>
To: Kfrell <snoopp.5.20@hotmail.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding new library to yocto project
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
X-List-Received-Date: Mon, 09 Mar 2015 17:35:18 -0000
Content-Type: multipart/alternative; boundary=001a114662a4db9d7e0510de74c9

--001a114662a4db9d7e0510de74c9
Content-Type: text/plain; charset=UTF-8

On 9 March 2015 at 16:50, Kfrell <snoopp.5.20@hotmail.fr> wrote:

> I added "libxerces" to my bb image by using IMAGE_INSTALL += " libxerces".
> Then, I try to build my image thru bitbake my-image-test and eveything is
> done correctly but libxerces returns some errors :
>

Packages containing libraries get renamed (by default) depending on the
library name, so just because you called the recipe "libxerces" doesn't
mean the resulting package is called that.

Have a look in tmp/work/[machine]/libxerces/deploy-* for the packages that
were actually generated, it's probably something like libxerces-c.

Ross

--001a114662a4db9d7e0510de74c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2015 at 16:50, Kfrell <span dir=3D"ltr">&lt;<a href=3D"mailto:sn=
oopp.5.20@hotmail.fr" target=3D"_blank">snoopp.5.20@hotmail.fr</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":5u0" class=3D"a3s" =
style=3D"overflow:hidden">I added &quot;libxerces&quot; to my bb image by u=
sing IMAGE_INSTALL +=3D &quot; libxerces&quot;.<br>
Then, I try to build my image thru bitbake my-image-test and eveything is<b=
r>
done correctly but libxerces returns some errors :</div></blockquote></div>=
<br>Packages containing libraries get renamed (by default) depending on the=
 library name, so just because you called the recipe &quot;libxerces&quot; =
doesn&#39;t mean the resulting package is called that.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Have a look in tmp/work/[m=
achine]/libxerces/deploy-* for the packages that were actually generated, i=
t&#39;s probably something like libxerces-c.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114662a4db9d7e0510de74c9--
