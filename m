Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B67E00C43; Tue, 26 Feb 2019 10:35:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTTPS_HTTP_MISMATCH,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0A5E00BCC
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 10:35:52 -0800 (PST)
Received: by mail-qk1-f177.google.com with SMTP id f196so8197492qke.10
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 10:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SZ8yaKoORIWxmrr78DRHN6cCiJk4oxocX8eQuIOXvd4=;
	b=eQwf8MLFbMdOgilhE6bg0YyTezQvpm0/cb7R+mqWZaOy1Dm9v9zQD68ickvVEaMW5X
	0DyzgnZRL7SXYctD4JF7yKdmCg/TVlbi4oUb/kKibh+jMXoQgwR4A97utNA2PgjwKcUo
	fbr8jWYJqmHrH8/wTa7NamNrgn5Op5FDspiDF2KrriCILCxbIQYlMea/SV8xlA6O5VP6
	scj4ahkVb5HojkFkbrQqx4bofcdw5JE8IVTTRBk2EovT8rjPjVVDcuOL5YGeVCCjY5Hu
	n83VrZweUPZKMpf9JWZtqfRlexVh1/9i53oZ3ipqZbCR2lPFlBXgCMxPTsJZqgoZ/DWI
	UstA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SZ8yaKoORIWxmrr78DRHN6cCiJk4oxocX8eQuIOXvd4=;
	b=e/iRjYLP1nt7tEAbA6UCdJH339YeU1XKJ5R3e2RwmiL5Fq8NdonWvKshiN0eWVX8Ts
	p/Q++Vl66MyNvHCTEan4VaXeMD0z+A6g+6C5ThkLxD+zVUuz3R3YJ/WN6P1HVGPtRIRY
	mutTrh9mtCxz2CzOk308YXn2WI0HophwUsYAqP4rZl0ISAam10RcOAtYsPR0chZ+r/22
	e4AyWjzBYvX7jZJxrI3DISpPcQFaJlSlyb3vEZaUMxiRvxjVU2Yn8v8l61bRGEr+en9X
	KqtJL6hBD9UdSiCCAhXFiGDkUyoQ7lRZ05h3tbwPwF8sn7kSjZBjKqwi6Ezk8mW0EfRs
	ZqnQ==
X-Gm-Message-State: AHQUAuYlzlk4aMQvwyfKq3MpRX+oEkdeG0fD2yapZDtexgpB2WoB6pxS
	fD9U4aGa+YHaGhbCJACNiH5Cw2PwvaxwEGAdSXHZBQ==
X-Google-Smtp-Source: AHgI3IbyAY19vOEZrjCZm3Qq06UxTDvxmv0c5AaUw7n9G9KK869LL9AbDTrNMB4F8OOiLMgxhSpOxiWcs8fRQZDam14=
X-Received: by 2002:a05:620a:124c:: with SMTP id
	a12mr9231645qkl.103.1551206152155; 
	Tue, 26 Feb 2019 10:35:52 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
	<DB6PR0701MB2629CC6C1069B27F94037DF7957B0@DB6PR0701MB2629.eurprd07.prod.outlook.com>
In-Reply-To: <DB6PR0701MB2629CC6C1069B27F94037DF7957B0@DB6PR0701MB2629.eurprd07.prod.outlook.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Tue, 26 Feb 2019 10:35:40 -0800
Message-ID: <CAHSUxjQ21WkhJehKd9B_e2uqqf5RA4QizA+JYq0rA9Ujzjr7rw@mail.gmail.com>
To: Erik Hoogeveen <erik.hoogeveen@outlook.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Tue, 26 Feb 2019 18:35:54 -0000
Content-Type: multipart/alternative; boundary="000000000000ac45470582d05398"

--000000000000ac45470582d05398
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, based on the responses above I did some more research and it didn't
seem like the file sizes should be causing problems on the scale that I was
seeing so I investigated further. I realized that despite my build/sstate
directory getting slowly larger, it wasn't actually getting the files and
was leaving empty files behind. I tried just changing the https in my
SSTATE_MIRRORs line just http and it worked perfectly, pulling down a half
gig of sstate before I could tell it was even working. So there was likely
some other misconfiguration in our AWS account that caused the https to
fail (despite being able to wget individual files using https). Thanks for
the responses!

On Tue, Feb 26, 2019 at 12:19 AM Erik Hoogeveen <erik.hoogeveen@outlook.com=
>
wrote:

> Hi Timothy,
>
> The S3 protocol is HTTP(S) based, the overhead per object is quite
> significant. This is not much of a problem for large files but the
> sstate_cache contains mostly lots of really small files. I think in this
> case you=E2=80=99re better of storing the cache on a secondary EBS volume=
 that you
> can attach as a regular block device to the EC2 instance. You can swtich =
on
> deletion protection to make it survive EC2 termination.
>
> Since EBS volumes are quite a bit more expensive than S3 buckets  you
> could make snapshots to transfer the state between build runs in stead th=
en
> you can destroy the EBS volume when nothing is running.
>
> Alls the documentation about EBS is here
> https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html
>
> Cheers,
> Erik
> On 26 Feb 2019, 02:45 +0100, Timothy Froehlich <tfroehlich@archsys.io>,
> wrote:
>
> I've been spending a bit too long this past week trying to build up a
> reproducable build infrastructure in AWS and I've got very little
> experience with cloud infrastucture and I'm wondering if I'm going in the
> wrong direction. I'm attempting to host my sstate_cache as a mirror in a
> private S3 bucket, and I believe I have everything configured properly,
> including exposing the bucket to http requests, since I can wget files th=
at
> I've previously synced up to the bucket. However if I add in the
> SSTATE_MIRRORS to my build, bitbake slows to a crawl (it's a powerful VM)
> and barely seems to get anything. The EC2 instance is in the same region =
as
> the S3 bucket, roles have been configured properly to allow access, etc.
>
> I'm not looking for help debugging this, I just want to know whether I'm
> right that hosting my sstate in an S3 bucket should work. I've only been
> able to find one mention of it being done with no reproduction hints.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
>
> https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists=
.yoctoproject.org%2Flistinfo%2Fyocto&amp;data=3D02%7C01%7C%7Cdc66c2ab9da442=
72220b08d69b8c2262%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C63686742350=
6178146&amp;sdata=3DTjwcnaFaZQpk9iuxL16%2FosjuqEH2S7aXB16JjBIDGko%3D&amp;re=
served=3D0
>
>

--=20
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000ac45470582d05398
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, based on the responses above I did some more researc=
h and it didn&#39;t seem like the file sizes should be causing problems on =
the scale that I was seeing so I investigated further. I realized that desp=
ite my build/sstate directory getting slowly larger, it wasn&#39;t actually=
 getting the files and was leaving empty files behind. I tried just changin=
g the https in my SSTATE_MIRRORs line just http and it worked perfectly, pu=
lling down a half gig of sstate before I could tell it was even working. So=
 there was likely some other misconfiguration in our AWS account that cause=
d the https to fail (despite being able to wget individual files using http=
s). Thanks for the responses!</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Feb 26, 2019 at 12:19 AM Erik Hoogeve=
en &lt;<a href=3D"mailto:erik.hoogeveen@outlook.com">erik.hoogeveen@outlook=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">




<div>
<div name=3D"messageBodySection" style=3D"font-size:14px;font-family:-apple=
-system,BlinkMacSystemFont,sans-serif">
Hi Timothy,
<div><br>
</div>
<div>The S3 protocol is HTTP(S) based, the overhead per object is quite sig=
nificant. This is not much of a problem for large files but the sstate_cach=
e contains mostly lots of really small files. I think in this case you=E2=
=80=99re better of storing the cache on a
 secondary EBS volume that you can attach as a regular block device to the =
EC2 instance. You can swtich on deletion protection to make it survive EC2 =
termination.=C2=A0</div>
<div><br>
</div>
<div>Since EBS volumes are quite a bit more expensive than S3 buckets =C2=
=A0you could make snapshots to transfer the state between build runs in ste=
ad then you can destroy the EBS volume when nothing is running.</div>
<div><br>
</div>
<div>Alls the documentation about EBS is here=C2=A0<a href=3D"https://docs.=
aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html" target=3D"_blank">ht=
tps://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html</a>=C2=A0<=
/div>
<div><br>
</div>
<div>Cheers,</div>
<div>Erik</div>
</div>
<div name=3D"messageReplySection" style=3D"font-size:14px;font-family:-appl=
e-system,BlinkMacSystemFont,sans-serif">
On 26 Feb 2019, 02:45 +0100, Timothy Froehlich &lt;<a href=3D"mailto:tfroeh=
lich@archsys.io" target=3D"_blank">tfroehlich@archsys.io</a>&gt;, wrote:<br=
>
<blockquote type=3D"cite" style=3D"margin:5px;padding-left:10px;border-left=
:thin solid rgb(26,188,156)">
<div dir=3D"ltr">I&#39;ve been spending a bit too long this past week tryin=
g to build up a reproducable build infrastructure in AWS and I&#39;ve got v=
ery little experience with cloud infrastucture and I&#39;m wondering if I&#=
39;m going in the wrong direction. I&#39;m attempting
 to host my sstate_cache as a mirror in a private S3 bucket, and I believe =
I have everything configured properly, including exposing the bucket to htt=
p requests, since I can wget files that I&#39;ve previously synced up to th=
e bucket. However if I add in the SSTATE_MIRRORS
 to my build, bitbake slows to a crawl (it&#39;s a powerful VM) and barely =
seems to get anything. The EC2 instance is in the same region as the S3 buc=
ket, roles have been configured properly to allow access, etc.
<div><br>
</div>
<div>I&#39;m not looking for help debugging this, I just want to know wheth=
er I&#39;m right that hosting my sstate in an S3 bucket should work. I&#39;=
ve only been able to find one mention of it being done with no reproduction=
 hints.
<div dir=3D"ltr" class=3D"gmail-m_-6511562960536769632gmail_signature">
<div dir=3D"ltr">
<div><br>
</div>
</div>
</div>
</div>
</div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Flists.yoctoproject.org%2Flistinfo%2Fyocto&amp;amp;data=3D02%7C01%7C%7Cd=
c66c2ab9da44272220b08d69b8c2262%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%=
7C636867423506178146&amp;amp;sdata=3DTjwcnaFaZQpk9iuxL16%2FosjuqEH2S7aXB16J=
jBIDGko%3D&amp;amp;reserved=3D0" target=3D"_blank">https://nam04.safelinks.=
protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Flistin=
fo%2Fyocto&amp;amp;data=3D02%7C01%7C%7Cdc66c2ab9da44272220b08d69b8c2262%7C8=
4df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636867423506178146&amp;amp;sdata=
=3DTjwcnaFaZQpk9iuxL16%2FosjuqEH2S7aXB16JjBIDGko%3D&amp;amp;reserved=3D0</a=
><br>
</blockquote>
<div></div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--000000000000ac45470582d05398--
