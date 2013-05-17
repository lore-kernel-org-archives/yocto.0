Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 343A3E01529
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 09:39:03 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id t10so4553139lbi.4
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 09:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=IjvqXdmlpRCGAbFPmvKhKsFXUw6gTFAmIYyTtxY0c2w=;
	b=zmqU4v8tutsSrp97QZiOYchKc6j05QUOq5faDxBovOCODwu7UwZd1T8jL9SM/xNqxK
	i7WLwPStReZx6mEQPCk4mmLdGdT3AG5msBrpvrkjYhIJHAfZVTNEM2CivFIgF1q0ypHc
	dUgiIJAD5bsyyL7MdtX4soHS0E1VBnTEO0ydghtAuE6T16+16sohrrWbu+y9MwVDL5WX
	ciR2t0nWJgBkA+BOJPvnwTQA7PoZI5N9ot6EvTN94vDeplpCMff4pF5uj/uu2HFK29D/
	GxFuUBYamx5pAjAtqS5w6vrlDst9SkyZxtkYLDrU3nOJnsxOGCC6RUY3+kuEjlQGJ/XI
	0Pvg==
X-Received: by 10.112.202.105 with SMTP id kh9mr3591440lbc.120.1368808742018; 
	Fri, 17 May 2013 09:39:02 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.141.74 with HTTP; Fri, 17 May 2013 09:38:41 -0700 (PDT)
In-Reply-To: <1825160.HcECli0hlK@helios>
References: <1B9AA52722844A4995CFFE20C2BC6B596B7A1105@ORSMSX107.amr.corp.intel.com>
	<1825160.HcECli0hlK@helios>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 17 May 2013 09:38:41 -0700
X-Google-Sender-Auth: AMkMDBKn4j5giL-AZRDH91eD6uA
Message-ID: <CABcZANmABphUYZryZFiYrvn-5r=vHrFre=G6rkGQ-CBMmjZmVA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Customize Number of Threads per Task?
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
X-List-Received-Date: Fri, 17 May 2013 16:39:03 -0000
Content-Type: multipart/alternative; boundary=001a11c36c94d5643804dcec9eb3

--001a11c36c94d5643804dcec9eb3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2013 at 1:53 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Travis,
>
> On Friday 17 May 2013 00:40:51 Post, Travis wrote:
> > I=E2=80=99ve written a bitbake class that adds a custom task in-between
> do_configure
> > and do_compile, called =E2=80=98do_send_to_remote=E2=80=99. Is there an=
y way for Yocto to
> > allow only one instance of this task to run at a time? I know I can set
> > BB_NUMBER_THREADS =3D 1, but that will slow down everything. Is there a=
 way
> > to do something like: BB_NUMBER_THREADS[do_send_to_remote] =3D 1?
>
> I don't think we have anything quite like that, but we do have support fo=
r
> locking via a "lockfiles" parameter on a task function; e.g. from
> rootfs_rpm.bbclass:
>
> do_rootfs[lockfiles] +=3D "${DEPLOY_DIR_RPM}/rpm.lock"
>
> That should ensure only one instance of the task's code gets to run at a
> time.
>

One could implement this through a custom bitbake scheduler. At one point I
had a scheduler which let you define a task flag to indicate which resource
it predominantly used (cpu, memory, network) and then let you define
per-resource maximum thread counts, but it was extremely naive, and didn't
improve overall performance much :\
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c36c94d5643804dcec9eb3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, May 17, 2013 at 1:53 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":oc" style=3D"overflow:hidden">Hi=
 Travis,<br>
<div><div class=3D"h5"><br>
On Friday 17 May 2013 00:40:51 Post, Travis wrote:<br>
&gt; I=E2=80=99ve written a bitbake class that adds a custom task in-betwee=
n do_configure<br>
&gt; and do_compile, called =E2=80=98do_send_to_remote=E2=80=99. Is there a=
ny way for Yocto to<br>
&gt; allow only one instance of this task to run at a time? I know I can se=
t<br>
&gt; BB_NUMBER_THREADS =3D 1, but that will slow down everything. Is there =
a way<br>
&gt; to do something like: BB_NUMBER_THREADS[do_send_to_remote] =3D 1?<br>
<br>
</div></div>I don&#39;t think we have anything quite like that, but we do h=
ave support for<br>
locking via a &quot;lockfiles&quot; parameter on a task function; e.g. from=
<br>
rootfs_rpm.bbclass:<br>
<br>
do_rootfs[lockfiles] +=3D &quot;${DEPLOY_DIR_RPM}/rpm.lock&quot;<br>
<br>
That should ensure only one instance of the task&#39;s code gets to run at =
a time.</div></blockquote></div><br>One could implement this through a cust=
om bitbake scheduler. At one point I had a scheduler which let you define a=
 task flag to indicate which resource it predominantly used (cpu, memory, n=
etwork) and then let you define per-resource maximum thread counts, but it =
was extremely naive, and didn&#39;t improve overall performance much :\<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c36c94d5643804dcec9eb3--
