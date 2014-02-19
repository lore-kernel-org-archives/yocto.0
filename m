Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88BCE00739
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 10:13:46 -0800 (PST)
Received: by mail-oa0-f44.google.com with SMTP id g12so872128oah.31
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 10:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CUWhO7H1HjbVtJ8CxfI4RdnlU4zoLQPkCgvuvOxOkiY=;
	b=AOv7XcmuCJjqbuTeOrrybsFYqI//5XwsBVcztiYnuKnQN6AmuFhc04mlCtSFWrTBci
	6zLeM/GYDsTz1I4XakH+1hbjDop2SsCR6sHOXA7uCVfc1h7lE82erPe+1sVH1DN2bdkr
	iks46tqVRif7CrgLvyVzY6lUIKXeOw5eqc6JGL87FT7golR0d/vBgU51NhabJN0ZTnmv
	wYYsSLZJhKdNmJO8Me5e79xCb/GPnxCl5R0izuGtkbE+myjuWIF7D3vM7RP9WaOHP+1m
	QTyASzqwn81U1UT1BIiX28fsnFNp1j5o9EtEaZ/3ueG40EHU3/KeygZ6vlYTiZ56J3Xc
	GLsw==
MIME-Version: 1.0
X-Received: by 10.60.227.200 with SMTP id sc8mr1931414oec.4.1392833625425;
	Wed, 19 Feb 2014 10:13:45 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Wed, 19 Feb 2014 10:13:45 -0800 (PST)
In-Reply-To: <20140219142311.GG22316@lpalcu-linux>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
	<CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
	<20140219125602.GE22316@lpalcu-linux>
	<CAD78y+5bKWWYUd1V+qheXY2w-84ZAWsf5HRhoZXMjnufGuJYkg@mail.gmail.com>
	<20140219135125.GF22316@lpalcu-linux>
	<CAD78y+6EHqhRTc186_wEJ6cz0GuBh8cNBgu67_pOyiaRchPXbg@mail.gmail.com>
	<20140219142311.GG22316@lpalcu-linux>
Date: Wed, 19 Feb 2014 19:13:45 +0100
Message-ID: <CAD78y+53PH6_BAR11STxLCzDKKG6bYCvcPyToDaSJyY_xgr_Wg@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: problem with yocto behind http_proxy
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
X-List-Received-Date: Wed, 19 Feb 2014 18:13:46 -0000
Content-Type: multipart/alternative; boundary=001a11369726799c6e04f2c65955

--001a11369726799c6e04f2c65955
Content-Type: text/plain; charset=ISO-8859-1

Thank you Laurentiu, tomorrow I'll give it a try! Thank you very much !

Federico



2014-02-19 15:23 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:

> On Wed, Feb 19, 2014 at 02:57:49PM +0100, Federico Vitali wrote:
> > I've alreay tried, it doesn't accept it ...
> Apparently, socat has support for authentication. Try this:
>
> #!/bin/bash
> # $1 = hostname, $2 = port
> PROXY=myproxy.example.com
> exec socat STDIO SOCKS4:$PROXY:$1:$2,proxyauth=user:pass
>
> Above is just an example. You'll probably have to adujust it, depending
> on your proxy type. See the manual for details.
>
> laurentiu
> >
> >
> > 2014-02-19 14:51 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:
> >
> >     On Wed, Feb 19, 2014 at 02:24:38PM +0100, Federico Vitali wrote:
> >     > Thank you Laurentiu. Unfortunately my proxy requires
> authentication via
> >     > username and password,
> >     > but it seems to me that netcat doesn't support it. Or am I wrong?
> >     Well, the BSD netcat (on my Ubuntu 12.04) appears to support it:
> >
> >     From the man page:
> >          -P proxy_username
> >                       Specifies a username to present to a proxy server
> that
> >                       requires authentication.  If no username is
> specified
> >                       then authentication will not be attempted.  Proxy
> >                       authentication is only supported for HTTP CONNECT
> >                       proxies at present.
> >
> >     Though I don't know how you specify a password... perhaps
> -Puser:passwd?
> >
> >     laurentiu
> >     >
> >     >
> >     > 2014-02-19 13:56 GMT+01:00 Laurentiu Palcu <
> laurentiu.palcu@intel.com>:
> >     >
> >     >     Hi Federico,
> >     >
> >     >     You can find more info about setting up Yocto behind proxies
> here:
> >     >
> >     >
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> >     >
> >     >     For git, I recommend the 'nc' method. Works fine for me.
> >     >
> >     >     laurentiu
> >     >
> >     >     On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali
> wrote:
> >     >     > sorry I forgot to reply also to yocto@yoctoproject.org.
> This was
> >     the
> >     >     reply
> >     >     >
> >     >     > thank you Marco,
> >     >     > I've tried but I'm still having problems:
> >     >     >
> >     >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
> >     >     yocto-kernel-tools.git,
> >     >     > attempting MIRRORS if available
> >     >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
> >     >     linux-yocto-3.10.git;
> >     >     > bareclone=1;branch=standard/base,meta;name=machine,meta,
> attempting
> >     >     MIRRORS if
> >     >     > available
> >     >     > ERROR: Fetcher failure: Fetch command failed with exit code
> 128,
> >     output:
> >     >     > fatal: unable to connect to git.yoctoproject.org:
> >     >     > git.yoctoproject.org: Name or service not known
> >     >     >
> >     >     > I noticed that the url https://www.yoctoproject.org/sourcesis not
> >     >     working.
> >     >     > So I tried  http://downloads.yoctoproject.org/sources/, but
> I get
> >     this
> >     >     error:
> >     >     >
> >     >     > ERROR: Fetcher failure: Fetch command failed with exit code
> 128,
> >     output:
> >     >     > fatal: unable to connect to git.yoctoproject.org:
> >     >     > git.yoctoproject.org: Name or service not known
> >     >     >
> >     >     >
> >     >     >
> >     >     > 2014-02-19 11:49 GMT+01:00 Marco <koansoftware@gmail.com>:
> >     >     >
> >     >     >     Il 19/02/2014 11:44, Federico Vitali ha scritto:
> >     >     >
> >     >     >         Hi,
> >     >     >
> >     >     >         I have problems using yocto behind a firewall. The
> firewall
> >     >     blocks git,
> >     >     >         so I've followed the instructions
> >     >     >         given here:
> >     >     >
> >     >     >         http://www.yoctoproject.org/docs/1.5.1/ref-manual/
> >     ref-manual.html
> >     >     #
> >     >     >
> >     >
> >
> how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server
> >     >     >
> >     >     >         i.e. adding the following lines to my local.conf:
> >     >     >
> >     >     >         PREMIRRORS_prepend = "\
> >     >     >               git://.*/.*
> http://www.yoctoproject.org/sources/  \n \
> >     >     >               ftp://.*/.*
> http://www.yoctoproject.org/sources/  \n \
> >     >     >               http://.*/.*
> http://www.yoctoproject.org/sources/  \n
> >     \
> >     >     >               https://.*/.*
> http://www.yoctoproject.org/sources/  \
> >     n"
> >     >     >
> >     >     >
> >     >     >         BB_FETCH_PREMIRRORONLY = "1"
> >     >     >
> >     >     >
> >     >     >         but I still get the following errors:
> >     >     >
> >     >     >         ERROR: Function failed: Network access disabled
> through
> >     >     BB_NO_NETWORK
> >     >     >         (or set indirectly due to use of
> BB_FETCH_PREMIRRORONLY)
> >     but
> >     >     access
> >     >     >         requested with command git fetch -f --prune git://
> >     >     git.yoctoproject.org/
> >     >     >         yocto-kernel-tools.git  <
> http://git.yoctoproject.org/
> >     >     >         yocto-kernel-tools.git>  refs/*:refs/* (for url
> git://
> >     >     >         git.yoctoproject.org/yocto-kernel-tools.git <http://
> >     >     >         git.yoctoproject.org/yocto-kernel-tools.git>)
> >     >     >
> >     >     >         ERROR: Logfile of failure stored in:
> /home/vitalife/yocto/
> >     >     >         poky-dora-10.0.1/build/tmp/work/x86_64-linux/
> >     kern-tools-native/
> >     >     >         0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490
> >     >     >
> >     >     >         It seems that bitbake is still trying to access the
> server
> >     with
> >     >     git.
> >     >     >
> >     >     >         Any suggestion?
> >     >     >
> >     >     >         Thank you in advance
> >     >     >
> >     >     >         Federico
> >     >     >
> >     >     >
> >     >     >
> >     >     >
> >     >     >
> >     >     >     Remove
> >     >     >     BB_FETCH_PREMIRRORONLY = "1"
> >     >     >
> >     >     >
> >     >     >     --
> >     >     >     Marco Cavallini | KOAN sas | Bergamo - Italia
> >     >     >      embedded and real-time software engineering
> >     >     >     Phone:+39-035-255.235 - Fax:+39-178-22.39.748
> >     >     >           http://www.KoanSoftware.com
> >     >     >     _______________________________________________
> >     >     >     yocto mailing list
> >     >     >     yocto@yoctoproject.org
> >     >     >     https://lists.yoctoproject.org/listinfo/yocto
> >     >     >
> >     >     >
> >     >
> >     >     > _______________________________________________
> >     >     > yocto mailing list
> >     >     > yocto@yoctoproject.org
> >     >     > https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >     >
> >
> >
>

--001a11369726799c6e04f2c65955
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Laurentiu, tomorrow I&#39;ll give it a try! Than=
k you very much !<div><br></div><div>Federico</div><div><br></div></div><di=
v class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-02-19 15:23=
 GMT+01:00 Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=3D"mailto:laurenti=
u.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.com</a>&gt;</spa=
n>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wed, Feb 19, 2014 at 02:5=
7:49PM +0100, Federico Vitali wrote:<br>
&gt; I&#39;ve alreay tried, it doesn&#39;t accept it ...<br>
</div>Apparently, socat has support for authentication. Try this:<br>
<br>
#!/bin/bash<br>
# $1 =3D hostname, $2 =3D port<br>
PROXY=3D<a href=3D"http://myproxy.example.com" target=3D"_blank">myproxy.ex=
ample.com</a><br>
exec socat STDIO SOCKS4:$PROXY:$1:$2,proxyauth=3Duser:pass<br>
<br>
Above is just an example. You&#39;ll probably have to adujust it, depending=
<br>
on your proxy type. See the manual for details.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
laurentiu<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
&gt; 2014-02-19 14:51 GMT+01:00 Laurentiu Palcu &lt;<a href=3D"mailto:laure=
ntiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt;:<br>
&gt;<br>
&gt; =A0 =A0 On Wed, Feb 19, 2014 at 02:24:38PM +0100, Federico Vitali wrot=
e:<br>
&gt; =A0 =A0 &gt; Thank you Laurentiu. Unfortunately my proxy requires auth=
entication via<br>
&gt; =A0 =A0 &gt; username and password,<br>
&gt; =A0 =A0 &gt; but it seems to me that netcat doesn&#39;t support it. Or=
 am I wrong?<br>
&gt; =A0 =A0 Well, the BSD netcat (on my Ubuntu 12.04) appears to support i=
t:<br>
&gt;<br>
&gt; =A0 =A0 From the man page:<br>
&gt; =A0 =A0 =A0 =A0 =A0-P proxy_username<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Specifies a username to pr=
esent to a proxy server that<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 requires authentication. =
=A0If no username is specified<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 then authentication will n=
ot be attempted. =A0Proxy<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 authentication is only sup=
ported for HTTP CONNECT<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proxies at present.<br>
&gt;<br>
&gt; =A0 =A0 Though I don&#39;t know how you specify a password... perhaps =
-Puser:passwd?<br>
&gt;<br>
&gt; =A0 =A0 laurentiu<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; 2014-02-19 13:56 GMT+01:00 Laurentiu Palcu &lt;<a href=3D=
"mailto:laurentiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt;:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 Hi Federico,<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 You can find more info about setting up Yocto beh=
ind proxies here:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"https://wiki.yoctoproject.org/wiki/Wor=
king_Behind_a_Network_Proxy" target=3D"_blank">https://wiki.yoctoproject.or=
g/wiki/Working_Behind_a_Network_Proxy</a><br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 For git, I recommend the &#39;nc&#39; method. Wor=
ks fine for me.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 laurentiu<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federic=
o Vitali wrote:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; sorry I forgot to reply also to <a href=3D"m=
ailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>. This was<br>
&gt; =A0 =A0 the<br>
&gt; =A0 =A0 &gt; =A0 =A0 reply<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; thank you Marco,<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; I&#39;ve tried but I&#39;m still having prob=
lems:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; WARNING: Failed to fetch URL git://<a href=
=3D"http://git.yoctoproject.org/" target=3D"_blank">git.yoctoproject.org/</=
a><br>
&gt; =A0 =A0 &gt; =A0 =A0 yocto-kernel-tools.git,<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; attempting MIRRORS if available<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; WARNING: Failed to fetch URL git://<a href=
=3D"http://git.yoctoproject.org/" target=3D"_blank">git.yoctoproject.org/</=
a><br>
&gt; =A0 =A0 &gt; =A0 =A0 linux-yocto-3.10.git;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; bareclone=3D1;branch=3Dstandard/base,meta;na=
me=3Dmachine,meta, attempting<br>
&gt; =A0 =A0 &gt; =A0 =A0 MIRRORS if<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; available<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; ERROR: Fetcher failure: Fetch command failed=
 with exit code 128,<br>
&gt; =A0 =A0 output:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; fatal: unable to connect to <a href=3D"http:=
//git.yoctoproject.org" target=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; <a href=3D"http://git.yoctoproject.org" targ=
et=3D"_blank">git.yoctoproject.org</a>: Name or service not known<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; I noticed that the url <a href=3D"https://ww=
w.yoctoproject.org/sources" target=3D"_blank">https://www.yoctoproject.org/=
sources</a> is not<br>
&gt; =A0 =A0 &gt; =A0 =A0 working.<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; So I tried =A0<a href=3D"http://downloads.yo=
ctoproject.org/sources/" target=3D"_blank">http://downloads.yoctoproject.or=
g/sources/</a>, but I get<br>
&gt; =A0 =A0 this<br>
&gt; =A0 =A0 &gt; =A0 =A0 error:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; ERROR: Fetcher failure: Fetch command failed=
 with exit code 128,<br>
&gt; =A0 =A0 output:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; fatal: unable to connect to <a href=3D"http:=
//git.yoctoproject.org" target=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; <a href=3D"http://git.yoctoproject.org" targ=
et=3D"_blank">git.yoctoproject.org</a>: Name or service not known<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; 2014-02-19 11:49 GMT+01:00 Marco &lt;<a href=
=3D"mailto:koansoftware@gmail.com">koansoftware@gmail.com</a>&gt;:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 Il 19/02/2014 11:44, Federico Vitali=
 ha scritto:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Hi,<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 I have problems using yocto =
behind a firewall. The firewall<br>
&gt; =A0 =A0 &gt; =A0 =A0 blocks git,<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 so I&#39;ve followed the ins=
tructions<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 given here:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctop=
roject.org/docs/1.5.1/ref-manual/" target=3D"_blank">http://www.yoctoprojec=
t.org/docs/1.5.1/ref-manual/</a><br>
&gt; =A0 =A0 ref-manual.html<br>
&gt; =A0 =A0 &gt; =A0 =A0 #<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 how-does-the-yocto-project-obtain-source-code-and-will-it-work=
-behind-my-firewall-or-proxy-server<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 i.e. adding the following li=
nes to my local.conf:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 PREMIRRORS_prepend =3D &quot=
;\<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 git://.*/.*<a hr=
ef=3D"http://www.yoctoproject.org/sources/" target=3D"_blank">http://www.yo=
ctoproject.org/sources/</a> =A0\n \<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 ftp://.*/.*<a hr=
ef=3D"http://www.yoctoproject.org/sources/" target=3D"_blank">http://www.yo=
ctoproject.org/sources/</a> =A0\n \<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://.*/.*<a h=
ref=3D"http://www.yoctoproject.org/sources/" target=3D"_blank">http://www.y=
octoproject.org/sources/</a> =A0\n<br>
&gt; =A0 =A0 \<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 https://.*/.*<a =
href=3D"http://www.yoctoproject.org/sources/" target=3D"_blank">http://www.=
yoctoproject.org/sources/</a> =A0\<br>
&gt; =A0 =A0 n&quot;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &=
quot;1&quot;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 but I still get the followin=
g errors:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 ERROR: Function failed: Netw=
ork access disabled through<br>
&gt; =A0 =A0 &gt; =A0 =A0 BB_NO_NETWORK<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 (or set indirectly due to us=
e of BB_FETCH_PREMIRRORONLY)<br>
&gt; =A0 =A0 but<br>
&gt; =A0 =A0 &gt; =A0 =A0 access<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 requested with command git f=
etch -f --prune git://<br>
&gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"http://git.yoctoproject.org/" target=
=3D"_blank">git.yoctoproject.org/</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git =A0&l=
t;<a href=3D"http://git.yoctoproject.org/" target=3D"_blank">http://git.yoc=
toproject.org/</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git&gt; =
=A0refs/*:refs/* (for url git://<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctop=
roject.org/yocto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/y=
octo-kernel-tools.git</a> =A0&lt;http://<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctop=
roject.org/yocto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/y=
octo-kernel-tools.git</a>&gt;)<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 ERROR: Logfile of failure st=
ored in: /home/vitalife/yocto/<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 poky-dora-10.0.1/build/tmp/w=
ork/x86_64-linux/<br>
&gt; =A0 =A0 kern-tools-native/<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 0.2+gitAUTOINC+a42509b01c-r1=
2/temp/log.do_fetch.4490<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 It seems that bitbake is sti=
ll trying to access the server<br>
&gt; =A0 =A0 with<br>
&gt; =A0 =A0 &gt; =A0 =A0 git.<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Any suggestion?<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Thank you in advance<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Federico<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 Remove<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &quot;1&q=
uot;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 --<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 Marco Cavallini | KOAN sas | Bergamo=
 - Italia<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0embedded and real-time software e=
ngineering<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 Phone:+39-035-255.235 - Fax:+39-178-=
22.39.748<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.Ko=
anSoftware.com" target=3D"_blank">http://www.KoanSoftware.com</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 ____________________________________=
___________<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 yocto mailing list<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject=
.org">yocto@yoctoproject.org</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; ____________________________________________=
___<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; yocto mailing list<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; <a href=3D"mailto:yocto@yoctoproject.org">yo=
cto@yoctoproject.org</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; <a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoc=
to</a><br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a11369726799c6e04f2c65955--
