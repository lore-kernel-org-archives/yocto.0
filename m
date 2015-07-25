Return-Path: <adam@alembicinst.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A309E0049B; Sat, 25 Jul 2015 07:42:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5274E003D7
	for <yocto@yoctoproject.org>; Sat, 25 Jul 2015 07:42:19 -0700 (PDT)
Received: by lblf12 with SMTP id f12so30163534lbl.2
	for <yocto@yoctoproject.org>; Sat, 25 Jul 2015 07:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=LgUUUjQnhPk+fOFDq/wxbff0e80/R+oRhsktC+UHGLo=;
	b=YA/obAgp7E6i4xzCQ6kPmbciBkXWm2nOFpxrgJpwVeXP2WFnWoGtu8/r5QYeJPZpkx
	8qX8XgVN80ycHRfcBXRDlyvpIDtSBqY/2ErUe1L/CMYvz30FGlxLfNhyLvIckgjcfRKF
	alQMQCsdO9PVmJtl/IaHxNFpUuGlUy6OZQNziAqr69b887VG/Y+bx2fWQoR3xppi7lSz
	0Y6EbkUOLDbU9QkqklcJXjOAMt9LE2bZA/fhNKY2+4j+ykqpZRp/5Ztfw4M/7g6gein+
	5VyF0VAJRo28QuprFlfVwHOBvzmuBnoGelp+koiO8sGYJK4NVTiTUQaRve4htPwB7YmV
	cI3w==
X-Gm-Message-State: ALoCoQmDbIf6DvFoA2v3ErjOKX6h7j0NHsdMiR1voClfnBYqyZ+CZZQ3Vesi3Rp7h4Lh1Q5JRqSG
MIME-Version: 1.0
X-Received: by 10.153.7.166 with SMTP id dd6mr18662942lad.42.1437835337545;
	Sat, 25 Jul 2015 07:42:17 -0700 (PDT)
Received: by 10.25.27.65 with HTTP; Sat, 25 Jul 2015 07:42:17 -0700 (PDT)
Received: by 10.25.27.65 with HTTP; Sat, 25 Jul 2015 07:42:17 -0700 (PDT)
In-Reply-To: <20150725002742.GC14383@haswell>
References: <3070750398d841b6866b97073c1bbeaa@nivm320.nibe.se>
	<loom.20150724T210947-218@post.gmane.org>
	<20150725002742.GC14383@haswell>
Date: Sat, 25 Jul 2015 10:42:17 -0400
Message-ID: <CAM5rrE5JiLnkEiZKrKGTdjZ+=N6WvPrep0A6BdEt62+uPa=AFw@mail.gmail.com>
From: Adam Sherman <adam@alembicinst.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Sun, 26 Jul 2015 09:17:14 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Sftp deploy hangs when using dropbear and yocto fido.
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
X-List-Received-Date: Sat, 25 Jul 2015 14:42:25 -0000
Content-Type: multipart/alternative; boundary=001a1133a6fe8a4e9e051bb42058

--001a1133a6fe8a4e9e051bb42058
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Will let you know on Monday.

I suppose all this implies that Qt Creator has its own sftp client, since
file transfers work outside of the IDE. In that case, I should find out
what protocol version this internal client is using. Not sure how to do
this... Perhaps the server on the embedded host can tell me with debug
output enabled?

Thanks,

Adam.
On 15-07-24 19:20:22, Adam Sherman wrote:
> M=C3=A5ns Andersson <Mans.Andersson@...> writes:
>
> >
> > Does anyone know about a problem with dropbear and openssh-sftp-server
on
> Yocto Fido?
> >
> > After upgrading my build from Dora to Fido the deployment of builds fro=
m
> QtCreator (3.2.2) to my qemuarm
> > build stopped working. It just hangs waiting as if it's working, i.e. n=
o
> error message. I've switched
> > toolchains and emulator images from my Dora and Fido builds back and
forth
> and the only common denominator
> > when it doesn't work is when using the Fido qemuarm build. Regular SSH
> connections and manual sftp
> > transfers (i.e. not initiated by Qt Creator) works, which just makes it
> even harder to debug.
> >
> > Thanks in advance.
> > // M=C3=A5ns
> >
>
> Just to let you know, I have the same behavior with QtCreator (3.4.2) /
> trying to deploy on the Armadeus APF27 embedded Linux Arm Platform
> (Buildroot 2015.02 / Dropbear / openssh sftp server).
>
> Similarly, stand-alone sftp transfers outside of QtCreator work just fine=
.

openssh 6.9 has changed some default ciphers and I see that it may not
work directly with older openssh servers, I wonder if you have same
problem with dropbear. Whats the openssh client/server versions involved on
your host ?

>
> Adam Sherman
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a1133a6fe8a4e9e051bb42058
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Will let you know on Monday.</p>
<p dir=3D"ltr">I suppose all this implies that Qt Creator has its own sftp =
client, since file transfers work outside of the IDE. In that case, I shoul=
d find out what protocol version this internal client is using. Not sure ho=
w to do this... Perhaps the server on the embedded host can tell me with de=
bug output enabled?</p>
<p dir=3D"ltr">Thanks,</p>
<p dir=3D"ltr">Adam.</p>
<div class=3D"gmail_quot&lt;blockquote class=3D" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On 15-07-24 19:20:22, Adam Sh=
erman wrote:<br>
&gt; M=C3=A5ns Andersson &lt;Mans.Andersson@...&gt; writes:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Does anyone know about a problem with dropbear and openssh-sftp-s=
erver on<br>
&gt; Yocto Fido?<br>
&gt; &gt;<br>
&gt; &gt; After upgrading my build from Dora to Fido the deployment of buil=
ds from<br>
&gt; QtCreator (3.2.2) to my qemuarm<br>
&gt; &gt; build stopped working. It just hangs waiting as if it&#39;s worki=
ng, i.e. no<br>
&gt; error message. I&#39;ve switched<br>
&gt; &gt; toolchains and emulator images from my Dora and Fido builds back =
and forth<br>
&gt; and the only common denominator<br>
&gt; &gt; when it doesn&#39;t work is when using the Fido qemuarm build. Re=
gular SSH<br>
&gt; connections and manual sftp<br>
&gt; &gt; transfers (i.e. not initiated by Qt Creator) works, which just ma=
kes it<br>
&gt; even harder to debug.<br>
&gt; &gt;<br>
&gt; &gt; Thanks in advance.<br>
&gt; &gt; // M=C3=A5ns<br>
&gt; &gt;<br>
&gt;<br>
&gt; Just to let you know, I have the same behavior with QtCreator (3.4.2) =
/<br>
&gt; trying to deploy on the Armadeus APF27 embedded Linux Arm Platform<br>
&gt; (Buildroot 2015.02 / Dropbear / openssh sftp server).<br>
&gt;<br>
&gt; Similarly, stand-alone sftp transfers outside of QtCreator work just f=
ine.<br>
<br>
openssh 6.9 has changed some default ciphers and I see that it may not<br>
work directly with older openssh servers, I wonder if you have same<br>
problem with dropbear. Whats the openssh client/server versions involved on=
 your host ?<br>
<br>
&gt;<br>
&gt; Adam Sherman<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</div>

--001a1133a6fe8a4e9e051bb42058--
