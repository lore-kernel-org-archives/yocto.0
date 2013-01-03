Return-Path: <errordeveloper@gmail.com>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F84E002AB
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 15:43:44 -0800 (PST)
Received: by mail-bk0-f46.google.com with SMTP id q16so6920806bkw.5
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2013 15:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=25p5UUXo9bWUXw+6KMYSUDLdU+LR0qR3NAFs42B3wEA=;
	b=gq/oNV8FHAaTOEa04zRUfprcFiKWqHY3zg5iGNpqKNihyVZe3tV4yu84plDbIbEm5a
	mKxP6aqju3Gs7HJYRs31PUxUpOEkntAGJWpZBOoyCpV9pn6Cwzd/FqrSSDVvc4rI2Cfa
	/lClY9UHg/F520jBW/fw9frYWl+RciU0Ezza1+Gg12KWYwt5mq4eMNl7qo5NTqMMVhar
	eu01/ttsBdiq/FHIO+e0qTW9zefXYizvj9sD8U015KOOKFA/dfrmW6JjWYnlf1bf3poL
	eNEBqZFtAVjZwyD9CtAmEHmWwylKYsxSS7CZYA9MkwPR+ebvoTntUgXchxbtWSM1BgO5
	6A2A==
MIME-Version: 1.0
Received: by 10.204.147.67 with SMTP id k3mr24351514bkv.117.1357256623602;
	Thu, 03 Jan 2013 15:43:43 -0800 (PST)
Received: by 10.204.50.83 with HTTP; Thu, 3 Jan 2013 15:43:43 -0800 (PST)
Date: Thu, 3 Jan 2013 23:43:43 +0000
Message-ID: <CAPhDKbHyqGUd5axL+fQVa0dbCF5yAjEEXmnexbb-ZwVJQKXfyA@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto@yoctoproject.org
Subject: configuration management on remote target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jan 2013 23:43:45 -0000
Content-Type: multipart/alternative; boundary=0015174c40bceb3c0b04d26aee54

--0015174c40bceb3c0b04d26aee54
Content-Type: text/plain; charset=ISO-8859-1

Hi,

As my day job mostly involves configuring servers using puppet
configuration management system, I had been thinking of what sort of tool
would be best to use on an embedded devices where on some occasions one
would want to update a couple of config files and scripts. Perhaps this can
be limited just to the `/etc` direcotry...

So the best I could come up with so far is to implement it as cron job that
would pull a git repository, perhaps it would also run a script (git hook)
that would restart a daemon or do something of that kind.

I suppose that some people will suggest to just use packages, but I'm not
very keen on maintaining a package repository on some sever out in the
internet that would be one big single point of failure. Although, perhaps,
on some occasion, this may be the only way.
Another reason why I wouldn't like to use git to manage configuration, as
that way all configs are going to be at hand from one directory tree, which
is, IMO, much quicker to manage and validate rather then a recipes spread
across subdirectories.

Firstly, I'd appreciate any feedback on this!

And I do have a few rather more specific questions ;)

a) How often OE users do not implement any system updates over the wire in
their products, although the product is able to access the internet?

b) Has anyone here use the configuration tools like puppet, chef or
cfendgine and understands the benefits?

c) Has anyone succeeded building git without having to include perl on the
target? I'd probably get ways with just a subset of git commands.
I have also had a look at libgit2, but not sure if I'd be able to implement
something as robust as git itself with libgit2...


Cheers,
-- 
Ilya

--0015174c40bceb3c0b04d26aee54
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>As my day job mostly involves=
 configuring servers using puppet configuration management system, I had be=
en thinking of what sort of tool would be best to use on an embedded device=
s where on some occasions one would want to update a couple of config files=
 and scripts. Perhaps this can be limited just to the `/etc` direcotry...</=
div>
<div style><br></div><div style>So the best I could come up with so far is =
to implement it as cron job that would pull a git repository, perhaps it wo=
uld also run a script (git hook) that would restart a daemon or do somethin=
g of that kind.</div>
<div style><br></div><div style>I suppose that some people will suggest to =
just use packages, but I&#39;m not very keen on maintaining a package repos=
itory on some sever out in the internet that would be one big single point =
of failure. Although, perhaps, on some occasion, this may be the only way.<=
/div>
<div style>Another reason why I wouldn&#39;t like to use git to manage conf=
iguration, as that way all configs are going to be at hand from one directo=
ry tree, which is, IMO, much quicker to manage and validate rather then a r=
ecipes spread across subdirectories.</div>
<div style><br></div><div style>Firstly, I&#39;d appreciate any feedback on=
 this!</div><div style><br></div><div style>And I do have a few rather more=
 specific questions ;)</div><div style><br></div><div style>a) How often OE=
 users do not implement any system updates over the wire in their products,=
 although the product is able to access the internet?</div>
<div style><br></div><div style>b) Has anyone here use the configuration to=
ols like puppet, chef or cfendgine and understands the benefits?</div><div =
style><br></div><div style>c) Has anyone succeeded building git without hav=
ing to include perl on the target? I&#39;d probably get ways with just a su=
bset of git commands.</div>
<div style>I have also had a look at libgit2, but not sure if I&#39;d be ab=
le to implement something as robust as git itself with libgit2...</div><div=
 style><br></div><div style><br></div><div style>Cheers,</div><div style>
--=A0</div><div style>Ilya=A0</div><div style><br></div></div>

--0015174c40bceb3c0b04d26aee54--
