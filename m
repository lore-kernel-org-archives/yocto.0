Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69CE2E007C9
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:57:50 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id wo20so430312obc.0
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 05:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CKuvuwE1nLkRL4WR4DHjxTZXweT7LIaHSsr2566kLWw=;
	b=VJxqz+Zq9dNBLkAKx6+LX4PXq6nXH+iYUL+RtPWkiCJgHKue70JHy0GK2hv+zYn7Ab
	i7vQ8Ug/UnFV5zRl0Q3GtsE7wNfTQJBNXL+lD21Yx1K4W0bLmliERDSKhqQg1L4mvUVb
	8IP1asdaG8jIFNkb8cCf+xm32S0/9ObGydGYlRZXX5aYxdZwPpLmGMg2yB18vJ4zMneJ
	JxonIh35utJedcVTW4E2S4TBdCyKqXMVFbi4n7d+4a8H6GBROen9q3Y8G+PSwwR1JPoV
	vOf6IBKIowh/MG200XKBIWGGW2XEpJxz+UejJsxKTmHv4/u4RFS6m2WA5IcHbdrX6V8t
	r/sQ==
MIME-Version: 1.0
X-Received: by 10.60.63.11 with SMTP id c11mr855701oes.82.1392818269929; Wed,
	19 Feb 2014 05:57:49 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Wed, 19 Feb 2014 05:57:49 -0800 (PST)
In-Reply-To: <20140219135125.GF22316@lpalcu-linux>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
	<CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
	<20140219125602.GE22316@lpalcu-linux>
	<CAD78y+5bKWWYUd1V+qheXY2w-84ZAWsf5HRhoZXMjnufGuJYkg@mail.gmail.com>
	<20140219135125.GF22316@lpalcu-linux>
Date: Wed, 19 Feb 2014 14:57:49 +0100
Message-ID: <CAD78y+6EHqhRTc186_wEJ6cz0GuBh8cNBgu67_pOyiaRchPXbg@mail.gmail.com>
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
X-List-Received-Date: Wed, 19 Feb 2014 13:57:53 -0000
Content-Type: multipart/alternative; boundary=001a11c20c543747be04f2c2c629

--001a11c20c543747be04f2c2c629
Content-Type: text/plain; charset=ISO-8859-1

I've alreay tried, it doesn't accept it ...


2014-02-19 14:51 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:

> On Wed, Feb 19, 2014 at 02:24:38PM +0100, Federico Vitali wrote:
> > Thank you Laurentiu. Unfortunately my proxy requires authentication via
> > username and password,
> > but it seems to me that netcat doesn't support it. Or am I wrong?
> Well, the BSD netcat (on my Ubuntu 12.04) appears to support it:
>
> From the man page:
>      -P proxy_username
>                   Specifies a username to present to a proxy server that
>                   requires authentication.  If no username is specified
>                   then authentication will not be attempted.  Proxy
>                   authentication is only supported for HTTP CONNECT
>                   proxies at present.
>
> Though I don't know how you specify a password... perhaps -Puser:passwd?
>
> laurentiu
> >
> >
> > 2014-02-19 13:56 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:
> >
> >     Hi Federico,
> >
> >     You can find more info about setting up Yocto behind proxies here:
> >
> >     https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> >
> >     For git, I recommend the 'nc' method. Works fine for me.
> >
> >     laurentiu
> >
> >     On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali wrote:
> >     > sorry I forgot to reply also to yocto@yoctoproject.org. This was
> the
> >     reply
> >     >
> >     > thank you Marco,
> >     > I've tried but I'm still having problems:
> >     >
> >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
> >     yocto-kernel-tools.git,
> >     > attempting MIRRORS if available
> >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
> >     linux-yocto-3.10.git;
> >     > bareclone=1;branch=standard/base,meta;name=machine,meta, attempting
> >     MIRRORS if
> >     > available
> >     > ERROR: Fetcher failure: Fetch command failed with exit code 128,
> output:
> >     > fatal: unable to connect to git.yoctoproject.org:
> >     > git.yoctoproject.org: Name or service not known
> >     >
> >     > I noticed that the url https://www.yoctoproject.org/sources is not
> >     working.
> >     > So I tried  http://downloads.yoctoproject.org/sources/, but I get
> this
> >     error:
> >     >
> >     > ERROR: Fetcher failure: Fetch command failed with exit code 128,
> output:
> >     > fatal: unable to connect to git.yoctoproject.org:
> >     > git.yoctoproject.org: Name or service not known
> >     >
> >     >
> >     >
> >     > 2014-02-19 11:49 GMT+01:00 Marco <koansoftware@gmail.com>:
> >     >
> >     >     Il 19/02/2014 11:44, Federico Vitali ha scritto:
> >     >
> >     >         Hi,
> >     >
> >     >         I have problems using yocto behind a firewall. The firewall
> >     blocks git,
> >     >         so I've followed the instructions
> >     >         given here:
> >     >
> >     >
> http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.html
> >     #
> >     >
> >
> how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server
> >     >
> >     >         i.e. adding the following lines to my local.conf:
> >     >
> >     >         PREMIRRORS_prepend = "\
> >     >               git://.*/.*http://www.yoctoproject.org/sources/  \n
> \
> >     >               ftp://.*/.*http://www.yoctoproject.org/sources/  \n
> \
> >     >               http://.*/.*http://www.yoctoproject.org/sources/ \n \
> >     >               https://.*/.*http://www.yoctoproject.org/sources/ \n"
> >     >
> >     >
> >     >         BB_FETCH_PREMIRRORONLY = "1"
> >     >
> >     >
> >     >         but I still get the following errors:
> >     >
> >     >         ERROR: Function failed: Network access disabled through
> >     BB_NO_NETWORK
> >     >         (or set indirectly due to use of BB_FETCH_PREMIRRORONLY)
> but
> >     access
> >     >         requested with command git fetch -f --prune git://
> >     git.yoctoproject.org/
> >     >         yocto-kernel-tools.git  <http://git.yoctoproject.org/
> >     >         yocto-kernel-tools.git>  refs/*:refs/* (for url git://
> >     >         git.yoctoproject.org/yocto-kernel-tools.git  <http://
> >     >         git.yoctoproject.org/yocto-kernel-tools.git>)
> >     >
> >     >         ERROR: Logfile of failure stored in: /home/vitalife/yocto/
> >     >
> poky-dora-10.0.1/build/tmp/work/x86_64-linux/kern-tools-native/
> >     >         0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490
> >     >
> >     >         It seems that bitbake is still trying to access the server
> with
> >     git.
> >     >
> >     >         Any suggestion?
> >     >
> >     >         Thank you in advance
> >     >
> >     >         Federico
> >     >
> >     >
> >     >
> >     >
> >     >
> >     >     Remove
> >     >     BB_FETCH_PREMIRRORONLY = "1"
> >     >
> >     >
> >     >     --
> >     >     Marco Cavallini | KOAN sas | Bergamo - Italia
> >     >      embedded and real-time software engineering
> >     >     Phone:+39-035-255.235 - Fax:+39-178-22.39.748
> >     >           http://www.KoanSoftware.com
> >     >     _______________________________________________
> >     >     yocto mailing list
> >     >     yocto@yoctoproject.org
> >     >     https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >
> >     > _______________________________________________
> >     > yocto mailing list
> >     > yocto@yoctoproject.org
> >     > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
>

--001a11c20c543747be04f2c2c629
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve alreay tried, it doesn&#39;t accept it ...=A0</di=
v><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-02-19 =
14:51 GMT+01:00 Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=3D"mailto:lau=
rentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.com</a>&gt;=
</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wed, Feb 19, 2014 at 02:2=
4:38PM +0100, Federico Vitali wrote:<br>
</div><div class=3D"">&gt; Thank you Laurentiu. Unfortunately my proxy requ=
ires authentication via<br>
&gt; username and password,<br>
&gt; but it seems to me that netcat doesn&#39;t support it. Or am I wrong?<=
br>
</div>Well, the BSD netcat (on my Ubuntu 12.04) appears to support it:<br>
<br>
From the man page:<br>
=A0 =A0 =A0-P proxy_username<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Specifies a username to present to a pr=
oxy server that<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 requires authentication. =A0If no usern=
ame is specified<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 then authentication will not be attempt=
ed. =A0Proxy<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 authentication is only supported for HT=
TP CONNECT<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 proxies at present.<br>
<br>
Though I don&#39;t know how you specify a password... perhaps -Puser:passwd=
?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
laurentiu<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
&gt; 2014-02-19 13:56 GMT+01:00 Laurentiu Palcu &lt;<a href=3D"mailto:laure=
ntiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt;:<br>
&gt;<br>
&gt; =A0 =A0 Hi Federico,<br>
&gt;<br>
&gt; =A0 =A0 You can find more info about setting up Yocto behind proxies h=
ere:<br>
&gt;<br>
&gt; =A0 =A0 <a href=3D"https://wiki.yoctoproject.org/wiki/Working_Behind_a=
_Network_Proxy" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Workin=
g_Behind_a_Network_Proxy</a><br>
&gt;<br>
&gt; =A0 =A0 For git, I recommend the &#39;nc&#39; method. Works fine for m=
e.<br>
&gt;<br>
&gt; =A0 =A0 laurentiu<br>
&gt;<br>
&gt; =A0 =A0 On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali wrot=
e:<br>
&gt; =A0 =A0 &gt; sorry I forgot to reply also to <a href=3D"mailto:yocto@y=
octoproject.org">yocto@yoctoproject.org</a>. This was the<br>
&gt; =A0 =A0 reply<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; thank you Marco,<br>
&gt; =A0 =A0 &gt; I&#39;ve tried but I&#39;m still having problems:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; WARNING: Failed to fetch URL git://<a href=3D"http://git.=
yoctoproject.org/" target=3D"_blank">git.yoctoproject.org/</a><br>
&gt; =A0 =A0 yocto-kernel-tools.git,<br>
&gt; =A0 =A0 &gt; attempting MIRRORS if available<br>
&gt; =A0 =A0 &gt; WARNING: Failed to fetch URL git://<a href=3D"http://git.=
yoctoproject.org/" target=3D"_blank">git.yoctoproject.org/</a><br>
&gt; =A0 =A0 linux-yocto-3.10.git;<br>
&gt; =A0 =A0 &gt; bareclone=3D1;branch=3Dstandard/base,meta;name=3Dmachine,=
meta, attempting<br>
&gt; =A0 =A0 MIRRORS if<br>
&gt; =A0 =A0 &gt; available<br>
&gt; =A0 =A0 &gt; ERROR: Fetcher failure: Fetch command failed with exit co=
de 128, output:<br>
&gt; =A0 =A0 &gt; fatal: unable to connect to <a href=3D"http://git.yoctopr=
oject.org" target=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; =A0 =A0 &gt; <a href=3D"http://git.yoctoproject.org" target=3D"_blank"=
>git.yoctoproject.org</a>: Name or service not known<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I noticed that the url <a href=3D"https://www.yoctoprojec=
t.org/sources" target=3D"_blank">https://www.yoctoproject.org/sources</a> i=
s not<br>
&gt; =A0 =A0 working.<br>
&gt; =A0 =A0 &gt; So I tried =A0<a href=3D"http://downloads.yoctoproject.or=
g/sources/" target=3D"_blank">http://downloads.yoctoproject.org/sources/</a=
>, but I get this<br>
&gt; =A0 =A0 error:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; ERROR: Fetcher failure: Fetch command failed with exit co=
de 128, output:<br>
&gt; =A0 =A0 &gt; fatal: unable to connect to <a href=3D"http://git.yoctopr=
oject.org" target=3D"_blank">git.yoctoproject.org</a>:<br>
&gt; =A0 =A0 &gt; <a href=3D"http://git.yoctoproject.org" target=3D"_blank"=
>git.yoctoproject.org</a>: Name or service not known<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; 2014-02-19 11:49 GMT+01:00 Marco &lt;<a href=3D"mailto:ko=
ansoftware@gmail.com">koansoftware@gmail.com</a>&gt;:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 Il 19/02/2014 11:44, Federico Vitali ha scritto:<=
br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Hi,<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 I have problems using yocto behind a fire=
wall. The firewall<br>
&gt; =A0 =A0 blocks git,<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 so I&#39;ve followed the instructions<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 given here:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/do=
cs/1.5.1/ref-manual/ref-manual.html" target=3D"_blank">http://www.yoctoproj=
ect.org/docs/1.5.1/ref-manual/ref-manual.html</a><br>
&gt; =A0 =A0 #<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 how-does-the-yocto-project-obtain-source-code-and-will-it-work=
-behind-my-firewall-or-proxy-server<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 i.e. adding the following lines to my loc=
al.conf:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 PREMIRRORS_prepend =3D &quot;\<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 git://.*/.*<a href=3D"http://=
www.yoctoproject.org/sources/" target=3D"_blank">http://www.yoctoproject.or=
g/sources/</a> =A0\n \<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 ftp://.*/.*<a href=3D"http://=
www.yoctoproject.org/sources/" target=3D"_blank">http://www.yoctoproject.or=
g/sources/</a> =A0\n \<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://.*/.*<a href=3D"http:/=
/www.yoctoproject.org/sources/" target=3D"_blank">http://www.yoctoproject.o=
rg/sources/</a> =A0\n \<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 https://.*/.*<a href=3D"http:=
//www.yoctoproject.org/sources/" target=3D"_blank">http://www.yoctoproject.=
org/sources/</a> =A0\n&quot;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<=
br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 but I still get the following errors:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 ERROR: Function failed: Network access di=
sabled through<br>
&gt; =A0 =A0 BB_NO_NETWORK<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 (or set indirectly due to use of BB_FETCH=
_PREMIRRORONLY) but<br>
&gt; =A0 =A0 access<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 requested with command git fetch -f --pru=
ne git://<br>
&gt; =A0 =A0 <a href=3D"http://git.yoctoproject.org/" target=3D"_blank">git=
.yoctoproject.org/</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git =A0&lt;<a href=3D"=
http://git.yoctoproject.org/" target=3D"_blank">http://git.yoctoproject.org=
/</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 yocto-kernel-tools.git&gt; =A0refs/*:refs=
/* (for url git://<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctoproject.org/yo=
cto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/yocto-kernel-t=
ools.git</a> =A0&lt;http://<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 <a href=3D"http://git.yoctoproject.org/yo=
cto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/yocto-kernel-t=
ools.git</a>&gt;)<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 ERROR: Logfile of failure stored in: /hom=
e/vitalife/yocto/<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 poky-dora-10.0.1/build/tmp/work/x86_64-li=
nux/kern-tools-native/<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 0.2+gitAUTOINC+a42509b01c-r12/temp/log.do=
_fetch.4490<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 It seems that bitbake is still trying to =
access the server with<br>
&gt; =A0 =A0 git.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Any suggestion?<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Thank you in advance<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 Federico<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 Remove<br>
&gt; =A0 =A0 &gt; =A0 =A0 BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 --<br>
&gt; =A0 =A0 &gt; =A0 =A0 Marco Cavallini | KOAN sas | Bergamo - Italia<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0embedded and real-time software engineering<br=
>
&gt; =A0 =A0 &gt; =A0 =A0 Phone:+39-035-255.235 - Fax:+39-178-22.39.748<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.KoanSoftware.co=
m" target=3D"_blank">http://www.KoanSoftware.com</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 _______________________________________________<b=
r>
&gt; =A0 =A0 &gt; =A0 =A0 yocto mailing list<br>
&gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@y=
octoproject.org</a><br>
&gt; =A0 =A0 &gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinf=
o/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a=
><br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt;<br>
&gt; =A0 =A0 &gt; _______________________________________________<br>
&gt; =A0 =A0 &gt; yocto mailing list<br>
&gt; =A0 =A0 &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt; =A0 =A0 &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a11c20c543747be04f2c2c629--
