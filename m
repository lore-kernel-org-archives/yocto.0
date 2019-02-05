Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94F7BE00AB0; Tue,  5 Feb 2019 04:49:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA59E00A0C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 04:49:15 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id q2-v6so2736154lji.10
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 04:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/9BLdZJegzaDLhs3XDERrvy9eOrKCgnrT5Ax/Hwpy2A=;
	b=NdnmwSVwqu/hgMTEHzE7z6M3IVnziYFlUcMbzgUj7tGwH+GT5mHO0r0l2wvj0NQRqR
	DFMA8Y1d2wC+D5NrwfSBa3ZfPppsksGWakjZcXOeto6Gisg9QRJf+rCLOtnFuFvaHXq1
	PvUMQYjixgcSj8kSCCagFerArJFREYSy4AWTHZ2V1ST6ImL9gFFpN7udz0fy5TYZTVWx
	zVh1nzZO4n4yxncETeQz1qjyf6aJzyy8a+HP5hzeuqMT1v+rWdYNAtf7cW0De2yXHPd8
	vkrJkXQqN7tdm1FYe5PG6f3pevvhI8MxpXidV/0N0duE1oRAwZSH649ENWj//UANzdEU
	psCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/9BLdZJegzaDLhs3XDERrvy9eOrKCgnrT5Ax/Hwpy2A=;
	b=krbsTnaQadXxgEu+Yj+ERvQbEQpcvI211gC5up1yuPVd3SXNW4whMr4ttp+I/3Iypi
	9tW1ohpz7HlTUYFwlJnG3iUVqfpPvcE+K9sxiNpSTfv9Ff99hSqaj5MPHjBDqnAsnb2X
	p2sheHqUftS+yY/oC99MpD9AS7W1j/eMZWK8lUv5mQsANk1m3yqr/J9brYc6jOY0w2PJ
	6ulKwJJr0/6T1nnSR6PbU2QV8B+cSzMjaEdu8aGUqWmumnGBclhf4TZLpV59dKGvyHjm
	QuUONNLiNnhk2sYM9CFPjB8BgXnqmL5tX9CNbOzmFEFRUzxCLMmU34es4H6cpHdQqUJl
	TKqg==
X-Gm-Message-State: AHQUAuZjL5Ekupf9E5GBDP5LzV2dFrLgtGoa+0rb5RBQ1XtNIlrch7ot
	teOxNYe/OsXuRUCkfoZTBSr86/WxhFCo6P712YghPT6ACtU=
X-Google-Smtp-Source: AHgI3IYNO+66qWY0jiHsef3lzC0SqFj46jsQjw7Xltxh+mzqUgnoywZHzemXyJDsi3fcdtWbhqRhDTTtV6kfzurLFms=
X-Received: by 2002:a2e:8087:: with SMTP id
	i7-v6mr2810114ljg.179.1549370954262; 
	Tue, 05 Feb 2019 04:49:14 -0800 (PST)
MIME-Version: 1.0
References: <5c5981f5.1c69fb81.5465f.054cSMTPIN_ADDED_BROKEN@mx.google.com>
In-Reply-To: <5c5981f5.1c69fb81.5465f.054cSMTPIN_ADDED_BROKEN@mx.google.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 5 Feb 2019 13:49:02 +0100
Message-ID: <CAP71WjzCKTU4F1hydgWjDXOm1VxUQRet60OEgGjNUKqUwE5ipQ@mail.gmail.com>
To: Bhupendra Singh <bhupendra.singh@ppsinternational.in>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to add/modify files in the root file systems in Yocto
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
X-List-Received-Date: Tue, 05 Feb 2019 12:49:16 -0000
X-Groupsio-MsgNum: 44013
Content-Type: multipart/related; boundary="0000000000005b132b05812509e1"

--0000000000005b132b05812509e1
Content-Type: multipart/alternative; boundary="0000000000005b132905812509e0"

--0000000000005b132905812509e0
Content-Type: text/plain; charset="UTF-8"

hi,

On Tue, Feb 5, 2019 at 1:30 PM Bhupendra Singh <
bhupendra.singh@ppsinternational.in> wrote:

>
>
> Dear sir,
>
> Are there any examples on how to add startup scripts and other files to
> the target root file system using yocto? ie placing shell scripts into the
> etc/init.d directory.
>

Please have a first look at the documentation on this topic:
https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#new-recipe-enabling-system-services

and let us know if you have any more questions.


>
>
>
>
> Thanks & Regards
>
> Bhupendra Singh
>
> Mob.+919599502188
>
>  [image: cid:image001.png@01CC0B4C.B6F26260]
>
>  PT Communication Systems Pvt. Ltd.
>
>  32,Udyog Kendra, Echotech III,Greater Noida (U.P.) 201308  India
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005b132905812509e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">hi,<div><br></div></div>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Fe=
b 5, 2019 at 1:30 PM Bhupendra Singh &lt;<a href=3D"mailto:bhupendra.singh@=
ppsinternational.in">bhupendra.singh@ppsinternational.in</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">









<div lang=3D"EN-US">

<div class=3D"gmail-m_-1410662260583724426Section1">

<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>

<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,serif;color:rgb(84,141,212)">Dear sir,<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,serif;color:rgb(84,141,212);background:white">Are there any examples on =
how to add startup
scripts and other files to the target root file system using yocto? ie plac=
ing
shell scripts into the etc/init.d directory.</span></p></div></div></blockq=
uote><div><br></div><div>Please have a first look at the documentation on t=
his topic:</div><div><a href=3D"https://www.yoctoproject.org/docs/2.6/mega-=
manual/mega-manual.html#new-recipe-enabling-system-services">https://www.yo=
ctoproject.org/docs/2.6/mega-manual/mega-manual.html#new-recipe-enabling-sy=
stem-services</a><br></div><div><br></div><div>and let us know if you have=
=C2=A0any more questions.</div><div>=C2=A0<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-14106=
62260583724426Section1"><p class=3D"MsoNormal"><span style=3D"font-family:&=
quot;Times New Roman&quot;,serif;color:rgb(84,141,212);background:white"><u=
></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,serif;color:rgb(84,141,212);background:white"><u></u>=C2=A0<u></u></span=
></p>

<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Times New Roman&quo=
t;,serif;color:rgb(84,141,212)"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif;color:rgb(79,129,189)">T=
hanks &amp; Regards</span><span style=3D"font-size:9.5pt;font-family:Arial,=
sans-serif;color:rgb(79,129,189)"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif;color:rgb(79,129,189)">B=
hupendra Singh</span><span style=3D"font-size:9.5pt;font-family:Arial,sans-=
serif;color:rgb(79,129,189)"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif;color:rgb(79,129,189)">M=
ob.+919599502188</span><span style=3D"font-size:9.5pt;font-family:Arial,san=
s-serif;color:rgb(79,129,189)"><u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif;color:rgb(31,73,125)">=
=C2=A0</span><span style=3D"color:rgb(31,73,125)"><img width=3D"75" height=
=3D"56" id=3D"gmail-m_-1410662260583724426Picture_x0020_1" src=3D"cid:168bd=
b3ce5a4cff311" alt=3D"cid:image001.png@01CC0B4C.B6F26260"></span><span styl=
e=3D"font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(34,34,34)"><u><=
/u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif;color:rgb(79,129,189)">=
=C2=A0PT Communication
Systems Pvt. Ltd.<u></u><u></u></span></p>

<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:rgb(=
79,129,189)">=C2=A0</span><span style=3D"font-size:12pt;font-family:&quot;T=
imes New Roman&quot;,serif;color:rgb(79,129,189)">32,Udyog
Kendra, Echotech III,Greater Noida (U.P.) 201308=C2=A0 India</span><span st=
yle=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,serif;color:r=
gb(79,129,189)"><u></u><u></u></span></p>

<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>

</div>

</div>


-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--0000000000005b132905812509e0--

--0000000000005b132b05812509e1
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <168bdb3ce5a4cff311>
X-Attachment-Id: 168bdb3ce5a4cff311

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

--0000000000005b132b05812509e1--
