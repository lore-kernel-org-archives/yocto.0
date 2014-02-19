Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C12D6E007C9
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:24:39 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id uz6so379105obc.18
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UgE3wAPoB0DSfU8iB5Wnj1H8EnbFz8KWbxAD3gUd25w=;
	b=tF6CDNWOcrs8l27W6rhqx+iWdruynllBOtnfK9kU8NZHEmd3JWYQhPIAOr0r7u30qI
	FGmIdHtV29eHfinVUeyjvQjTCOQlpE0mpmmWm2FyoeOU394OzHa3sAPhjQ64yAkv8OZv
	T2/jmz+rZ1VqavXJDQxnEYMpMhOn/bajp7C57K82JuGJ/wa8lZT1eU24VWlOb7Bl58I2
	5Wq3tTuFI+Tz2MH+S9sOpV9LJZppW4S7AIMZQEhi9YyYO0wYE5kpSbdbVPpdF0STGXT+
	sZUJN5XpDiigUn0DeXDB+jmdR/ySn/EaDNuD1MeyskYjXgsYPxQr7XFtH0OmS1VgDhrS
	TmUg==
MIME-Version: 1.0
X-Received: by 10.60.84.143 with SMTP id z15mr31510399oey.27.1392816278367;
	Wed, 19 Feb 2014 05:24:38 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Wed, 19 Feb 2014 05:24:38 -0800 (PST)
In-Reply-To: <20140219125602.GE22316@lpalcu-linux>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
	<CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
	<20140219125602.GE22316@lpalcu-linux>
Date: Wed, 19 Feb 2014 14:24:38 +0100
Message-ID: <CAD78y+5bKWWYUd1V+qheXY2w-84ZAWsf5HRhoZXMjnufGuJYkg@mail.gmail.com>
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
X-List-Received-Date: Wed, 19 Feb 2014 13:24:40 -0000
Content-Type: multipart/alternative; boundary=089e0117696f82738704f2c24fac

--089e0117696f82738704f2c24fac
Content-Type: text/plain; charset=ISO-8859-1

Thank you Laurentiu. Unfortunately my proxy requires authentication via
username and password,
but it seems to me that netcat doesn't support it. Or am I wrong?


2014-02-19 13:56 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:

> Hi Federico,
>
> You can find more info about setting up Yocto behind proxies here:
>
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>
> For git, I recommend the 'nc' method. Works fine for me.
>
> laurentiu
>
> On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali wrote:
> > sorry I forgot to reply also to yocto@yoctoproject.org. This was the
> reply
> >
> > thank you Marco,
> > I've tried but I'm still having problems:
> >
> > WARNING: Failed to fetch URL git://
> git.yoctoproject.org/yocto-kernel-tools.git,
> > attempting MIRRORS if available
> > WARNING: Failed to fetch URL git://
> git.yoctoproject.org/linux-yocto-3.10.git;
> > bareclone=1;branch=standard/base,meta;name=machine,meta, attempting
> MIRRORS if
> > available
> > ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> > fatal: unable to connect to git.yoctoproject.org:
> > git.yoctoproject.org: Name or service not known
> >
> > I noticed that the url https://www.yoctoproject.org/sources is not
> working.
> > So I tried  http://downloads.yoctoproject.org/sources/, but I get this
> error:
> >
> > ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> > fatal: unable to connect to git.yoctoproject.org:
> > git.yoctoproject.org: Name or service not known
> >
> >
> >
> > 2014-02-19 11:49 GMT+01:00 Marco <koansoftware@gmail.com>:
> >
> >     Il 19/02/2014 11:44, Federico Vitali ha scritto:
> >
> >         Hi,
> >
> >         I have problems using yocto behind a firewall. The firewall
> blocks git,
> >         so I've followed the instructions
> >         given here:
> >
> >
> http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.html#
> >
> how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server
> >
> >         i.e. adding the following lines to my local.conf:
> >
> >         PREMIRRORS_prepend = "\
> >               git://.*/.*http://www.yoctoproject.org/sources/  \n \
> >               ftp://.*/.*http://www.yoctoproject.org/sources/  \n \
> >               http://.*/.*http://www.yoctoproject.org/sources/  \n \
> >               https://.*/.*http://www.yoctoproject.org/sources/  \n"
> >
> >
> >         BB_FETCH_PREMIRRORONLY = "1"
> >
> >
> >         but I still get the following errors:
> >
> >         ERROR: Function failed: Network access disabled through
> BB_NO_NETWORK
> >         (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but
> access
> >         requested with command git fetch -f --prune git://
> git.yoctoproject.org/
> >         yocto-kernel-tools.git  <http://git.yoctoproject.org/
> >         yocto-kernel-tools.git>  refs/*:refs/* (for url git://
> >         git.yoctoproject.org/yocto-kernel-tools.git  <http://
> >         git.yoctoproject.org/yocto-kernel-tools.git>)
> >
> >         ERROR: Logfile of failure stored in: /home/vitalife/yocto/
> >         poky-dora-10.0.1/build/tmp/work/x86_64-linux/kern-tools-native/
> >         0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490
> >
> >         It seems that bitbake is still trying to access the server with
> git.
> >
> >         Any suggestion?
> >
> >         Thank you in advance
> >
> >         Federico
> >
> >
> >
> >
> >
> >     Remove
> >     BB_FETCH_PREMIRRORONLY = "1"
> >
> >
> >     --
> >     Marco Cavallini | KOAN sas | Bergamo - Italia
> >      embedded and real-time software engineering
> >     Phone:+39-035-255.235 - Fax:+39-178-22.39.748
> >           http://www.KoanSoftware.com
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0117696f82738704f2c24fac
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Laurentiu. Unfortunately my proxy requires authe=
ntication via username and password,<div>but it seems to me that netcat doe=
sn&#39;t support it. Or am I wrong?=A0</div></div><div class=3D"gmail_extra=
"><br>
<br><div class=3D"gmail_quote">2014-02-19 13:56 GMT+01:00 Laurentiu Palcu <=
span dir=3D"ltr">&lt;<a href=3D"mailto:laurentiu.palcu@intel.com" target=3D=
"_blank">laurentiu.palcu@intel.com</a>&gt;</span>:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
Hi Federico,<br>
<br>
You can find more info about setting up Yocto behind proxies here:<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Prox=
y" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Working_Behind_a_Ne=
twork_Proxy</a><br>
<br>
For git, I recommend the &#39;nc&#39; method. Works fine for me.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
laurentiu<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali wrote:<br>
&gt; sorry I forgot to reply also to <a href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a>. This was the reply<br>
&gt;<br>
&gt; thank you Marco,<br>
&gt; I&#39;ve tried but I&#39;m still having problems:<br>
&gt;<br>
&gt; WARNING: Failed to fetch URL git://<a href=3D"http://git.yoctoproject.=
org/yocto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/yocto-ke=
rnel-tools.git</a>,<br>
&gt; attempting MIRRORS if available<br>
&gt; WARNING: Failed to fetch URL git://<a href=3D"http://git.yoctoproject.=
org/linux-yocto-3.10.git" target=3D"_blank">git.yoctoproject.org/linux-yoct=
o-3.10.git</a>;<br>
&gt; bareclone=3D1;branch=3Dstandard/base,meta;name=3Dmachine,meta, attempt=
ing MIRRORS if<br>
&gt; available<br>
&gt; ERROR: Fetcher failure: Fetch command failed with exit code 128, outpu=
t:<br>
&gt; fatal: unable to connect to <a href=3D"http://git.yoctoproject.org" ta=
rget=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; <a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctopro=
ject.org</a>: Name or service not known<br>
&gt;<br>
&gt; I noticed that the url <a href=3D"https://www.yoctoproject.org/sources=
" target=3D"_blank">https://www.yoctoproject.org/sources</a> is not working=
.<br>
&gt; So I tried =A0<a href=3D"http://downloads.yoctoproject.org/sources/" t=
arget=3D"_blank">http://downloads.yoctoproject.org/sources/</a>, but I get =
this error:<br>
&gt;<br>
&gt; ERROR: Fetcher failure: Fetch command failed with exit code 128, outpu=
t:<br>
&gt; fatal: unable to connect to <a href=3D"http://git.yoctoproject.org" ta=
rget=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; <a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctopro=
ject.org</a>: Name or service not known<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2014-02-19 11:49 GMT+01:00 Marco &lt;<a href=3D"mailto:koansoftware@gm=
ail.com">koansoftware@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; =A0 =A0 Il 19/02/2014 11:44, Federico Vitali ha scritto:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 Hi,<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 I have problems using yocto behind a firewall. The fir=
ewall blocks git,<br>
&gt; =A0 =A0 =A0 =A0 so I&#39;ve followed the instructions<br>
&gt; =A0 =A0 =A0 =A0 given here:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/docs/1.5.1/ref-=
manual/ref-manual.html#" target=3D"_blank">http://www.yoctoproject.org/docs=
/1.5.1/ref-manual/ref-manual.html#</a><br>
&gt; =A0 =A0 =A0 =A0 how-does-the-yocto-project-obtain-source-code-and-will=
-it-work-behind-my-firewall-or-proxy-server<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 i.e. adding the following lines to my local.conf:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 PREMIRRORS_prepend =3D &quot;\<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 git://.*/.*<a href=3D"http://www.yoctoproj=
ect.org/sources/" target=3D"_blank">http://www.yoctoproject.org/sources/</a=
> =A0\n \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 ftp://.*/.*<a href=3D"http://www.yoctoproj=
ect.org/sources/" target=3D"_blank">http://www.yoctoproject.org/sources/</a=
> =A0\n \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://.*/.*<a href=3D"http://www.yoctopro=
ject.org/sources/" target=3D"_blank">http://www.yoctoproject.org/sources/</=
a> =A0\n \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 https://.*/.*<a href=3D"http://www.yoctopr=
oject.org/sources/" target=3D"_blank">http://www.yoctoproject.org/sources/<=
/a> =A0\n&quot;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 but I still get the following errors:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 ERROR: Function failed: Network access disabled throug=
h BB_NO_NETWORK<br>
&gt; =A0 =A0 =A0 =A0 (or set indirectly due to use of BB_FETCH_PREMIRRORONL=
Y) but access<br>
&gt; =A0 =A0 =A0 =A0 requested with command git fetch -f --prune git://<a h=
ref=3D"http://git.yoctoproject.org/" target=3D"_blank">git.yoctoproject.org=
/</a><br>
&gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git =A0&lt;<a href=3D"http://git.yo=
ctoproject.org/" target=3D"_blank">http://git.yoctoproject.org/</a><br>
&gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git&gt; =A0refs/*:refs/* (for url g=
it://<br>
&gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctoproject.org/yocto-kernel-to=
ols.git" target=3D"_blank">git.yoctoproject.org/yocto-kernel-tools.git</a> =
=A0&lt;http://<br>
&gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctoproject.org/yocto-kernel-to=
ols.git" target=3D"_blank">git.yoctoproject.org/yocto-kernel-tools.git</a>&=
gt;)<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 ERROR: Logfile of failure stored in: /home/vitalife/yo=
cto/<br>
&gt; =A0 =A0 =A0 =A0 poky-dora-10.0.1/build/tmp/work/x86_64-linux/kern-tool=
s-native/<br>
&gt; =A0 =A0 =A0 =A0 0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490<b=
r>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 It seems that bitbake is still trying to access the se=
rver with git.<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 Any suggestion?<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 Thank you in advance<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 Federico<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 Remove<br>
&gt; =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 Marco Cavallini | KOAN sas | Bergamo - Italia<br>
&gt; =A0 =A0 =A0embedded and real-time software engineering<br>
&gt; =A0 =A0 Phone:+39-035-255.235 - Fax:+39-178-22.39.748<br>
&gt; =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.KoanSoftware.com" target=3D"=
_blank">http://www.KoanSoftware.com</a><br>
&gt; =A0 =A0 _______________________________________________<br>
&gt; =A0 =A0 yocto mailing list<br>
&gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</div></div></blockquote></div><br></div>

--089e0117696f82738704f2c24fac--
