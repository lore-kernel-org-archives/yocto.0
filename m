Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E951E009A6; Fri, 10 Apr 2015 12:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2755BE00961
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 12:09:46 -0700 (PDT)
Received: by paboj16 with SMTP id oj16so30146466pab.0
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 12:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3K/zztcMhnukNLYRFztSuAwXXoSbuN70vzd/VnW0ZdY=;
	b=e8brWkBOrArvJ6lMIvqYe1AJWqLi6SxQLuMFJMMpJMdY/YcmqdEcsPke5OkXOiU+D0
	R9Lq6qV4fNGYBnnJKCyq17qYe1t01rONsZPnr8L+SgFvcD49sKO71eE+alEnQyGoWSHu
	ks1/WiI3e/fdCyvE7yTlQn6O4ruSq0bXAERMOJ8fdyakKRX9903FAVhxYQiOnjXW8P0F
	LhEzGZcu9g+DF/gw4SqARThiEBaz+Dx+8IVaEUY+gKccCNOcjZKp99035hkw8kFfmqrA
	At0gye/LQIAeGb9EZcVPD6ahAlkr6ApT3cYnC6P7+2pvyQ12zOLRP2zTXHUVvZneB/Zf
	Sogw==
MIME-Version: 1.0
X-Received: by 10.68.221.41 with SMTP id qb9mr5190142pbc.77.1428692986546;
	Fri, 10 Apr 2015 12:09:46 -0700 (PDT)
Received: by 10.70.114.166 with HTTP; Fri, 10 Apr 2015 12:09:46 -0700 (PDT)
In-Reply-To: <1428681803.3152.24.camel@tkkaskin-mobl3.ger.corp.intel.com>
References: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
	<1428681803.3152.24.camel@tkkaskin-mobl3.ger.corp.intel.com>
Date: Fri, 10 Apr 2015 15:09:46 -0400
Message-ID: <CAAPegz3CO7QUqyK-UqVCyqk8hwgCH23Bu1vGkPs=u94H03XZNA@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
To: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pulseaudio without x11
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
X-List-Received-Date: Fri, 10 Apr 2015 19:09:48 -0000
Content-Type: multipart/alternative; boundary=047d7b2ed2c3f4cf930513638189

--047d7b2ed2c3f4cf930513638189
Content-Type: text/plain; charset=UTF-8

On Friday, April 10, 2015, Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
wrote:

> On Fri, 2015-04-10 at 11:28 -0400, Chris Morgan wrote:
> > Hello.
> >
> > Using close to latest poky.
> >
> > I'm building a custom image, inheriting from 'core-image' and adding
> > in pulseaudio-server and DISTRO_FEATURES_append with pulseaudio but
> > removing x11.
> >
> > I'm seeing that the pulseaudio.service file isn't present, and even
> > when I copy it over, pulseaudio can't startup because it isn't able to
> > find the DISPLAY environment variable and it isn't running under a
> > user session, which I guess it how it normally runs?
> >
> > Is anyone else using pulseaudio on a build without x11 that might be
> > able to provide some hints on how to do so?
>
> Are you trying to run PulseAudio as a user service or as a system
> service?
>
> When running as a user service, you shouldn't try to use systemd to
> manage pulseaudio, because PulseAudio can't find the session bus when
> started by systemd, and that can cause libdbus to complain about unset
> DISPLAY. PulseAudio itself doesn't care about DISPLAY unless you
> specifically try to load the x11 specific modules.
>
> You didn't give much details, but I'm guessing that you're trying to use
> PulseAudio as a system service, but you don't pass the --system command
> line parameter, so PulseAudio thinks that it's supposed to be a user
> service.
>
> --
> Tanu


Hello.

I am trying to run as a system service, it's for an embedded system and
without x the normal dbus session per user doesn't make sense.

I had modified the service file to pass --system and pulse seemed happier.
Is this the recommended approach? Pulse does complain about passing that
option and running as root.

After a few minutes the service did shut down. It may have been due to
configuring the loop back module though I'm surprised a misconfiguration
would have resulted in pulse shutting down.

Chris

--047d7b2ed2c3f4cf930513638189
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Friday, April 10, 2015, Tanu Kaskinen &lt;<a href=3D"mailto:tanu.kaskine=
n@linux.intel.com">tanu.kaskinen@linux.intel.com</a>&gt; wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Fri, 2015-04-10 at 11:28 -0400, Chris Morgan wrot=
e:<br>
&gt; Hello.<br>
&gt;<br>
&gt; Using close to latest poky.<br>
&gt;<br>
&gt; I&#39;m building a custom image, inheriting from &#39;core-image&#39; =
and adding<br>
&gt; in pulseaudio-server and DISTRO_FEATURES_append with pulseaudio but<br=
>
&gt; removing x11.<br>
&gt;<br>
&gt; I&#39;m seeing that the pulseaudio.service file isn&#39;t present, and=
 even<br>
&gt; when I copy it over, pulseaudio can&#39;t startup because it isn&#39;t=
 able to<br>
&gt; find the DISPLAY environment variable and it isn&#39;t running under a=
<br>
&gt; user session, which I guess it how it normally runs?<br>
&gt;<br>
&gt; Is anyone else using pulseaudio on a build without x11 that might be<b=
r>
&gt; able to provide some hints on how to do so?<br>
<br>
Are you trying to run PulseAudio as a user service or as a system<br>
service?<br>
<br>
When running as a user service, you shouldn&#39;t try to use systemd to<br>
manage pulseaudio, because PulseAudio can&#39;t find the session bus when<b=
r>
started by systemd, and that can cause libdbus to complain about unset<br>
DISPLAY. PulseAudio itself doesn&#39;t care about DISPLAY unless you<br>
specifically try to load the x11 specific modules.<br>
<br>
You didn&#39;t give much details, but I&#39;m guessing that you&#39;re tryi=
ng to use<br>
PulseAudio as a system service, but you don&#39;t pass the --system command=
<br>
line parameter, so PulseAudio thinks that it&#39;s supposed to be a user<br=
>
service.<br>
<br>
--<br>
Tanu</blockquote><div><br></div><div>Hello.</div><div><br></div><div>I am t=
rying to run as a system service, it&#39;s for an embedded system and witho=
ut x the normal dbus session per user doesn&#39;t make sense.</div><div><br=
></div><div>I had modified the service file to pass --system and pulse seem=
ed happier. Is=C2=A0this the recommended approach? Pulse does complain abou=
t passing that option and running as root.<span></span></div><div><br></div=
><div>After=C2=A0a few minutes the service did shut down. It may have been =
due to configuring the loop back module though I&#39;m surprised a misconfi=
guration would have resulted in pulse shutting down.</div><div><br></div><d=
iv>Chris</div><div>=C2=A0</div>

--047d7b2ed2c3f4cf930513638189--
