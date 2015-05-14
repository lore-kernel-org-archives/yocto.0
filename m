Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D3CE009BB; Thu, 14 May 2015 12:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C53FE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 12:55:53 -0700 (PDT)
Received: by qgew3 with SMTP id w3so973593qge.2
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 12:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ySM66FZBiD6OmwQIgbbhjO1jGW7m5aNx2FClVh9zl4s=;
	b=c9ufJJaOQHlFz2uqDHSKD8q5DCCdiJagiWeUL6ehMWejtj0pBNiMJ32mAZcv/RVl9A
	IKCmIDemhFo3aq3cs2Q9XqJtzelAf7i5eAjkaxH6Ue0C6NX8WhKH4iZkM3SSaWgNgJgC
	zcLrXW3VQI/Pd7Cgkf22b/rU/eZWN5adm1kdbnOruz9nv9/sNelss/J6ITuIl6UBYBPB
	GTdHMGNwfeChzQ2ihaSrY+z13bEnPTGKNsLvh2en4sX+fRXq0UUx2MYVYN6z7NPBEkyF
	/ivyCyT5u0fJ5IkuHKK0pRcrtb4Mvnj5puwMD4sLXjuFSDdR2u+oy5EDwG/eO6LG1ugf
	+obQ==
X-Gm-Message-State: ALoCoQlW+1X0Rbm38b/3j/AOjkvlVPC2oSgAR/+M9pS6jvbT9ufPftz9UFFepeD1TvUvnvcMhoDm
X-Received: by 10.140.235.77 with SMTP id g74mr8291507qhc.64.1431633353042;
	Thu, 14 May 2015 12:55:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 14 May 2015 12:55:32 -0700 (PDT)
In-Reply-To: <5554FA4A.7010003@mlbassoc.com>
References: <5554ADDE.7030508@mlbassoc.com>
	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
	<5554B152.8030401@mlbassoc.com>
	<CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>
	<5554BED8.2090607@mlbassoc.com>
	<CAJTo0LadZdQAtCD=REUBjVbwHahnGAi1nLJMiCjZbNKzqYLECA@mail.gmail.com>
	<5554CD73.5080403@mlbassoc.com>
	<CAJTo0LaP4vv=hDQNjJY9LG6O4NLYi9_1DMt54OnnvqZrOwRk1Q@mail.gmail.com>
	<5554FA4A.7010003@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 May 2015 20:55:32 +0100
Message-ID: <CAJTo0LbNNdfXWXiQn2zX8AN=W_MOQ54-EpFcGmwM2ySL-mTBBw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 19:55:56 -0000
Content-Type: multipart/alternative; boundary=001a11354a0075026c0516101d69

--001a11354a0075026c0516101d69
Content-Type: text/plain; charset=UTF-8

On 14 May 2015 at 20:40, Gary Thomas <gary@mlbassoc.com> wrote:

> Interesting - gst-play/gtk-play works correctly on this target.
> Now I have to figure out why it doesn't work on the other systems
> I tested.
>
> Should I submit bugs against the QEMU targets as they get it
> even more wrong than the i.MX6 targets??
>
> Query: my laptop [test device] has two ALSA sound devices,
> HDMI and the internal PCH.  It has picked the HDMI as default
> and I get no sound when no HDMI monitor attached.  How do I
> select the other sound device (from sato desktop would be
> best, but I'd settle for any answer)
>

Ah, the old audio playback problem.  There's a bug for that.

Sato doesn't have a GUI for this right now but the good news is that this
is something you can probably fiddle with alsamixer for now, and in master
we'll be integrating PulseAudio properly so ideally it re-routes the audio
when HDMI is hotplugged.   Obviously at this point you're expecting this
series of events to actually work:
1) GPU detects HDMI hotplug
2) GPU probes HDMI, detects audio channel
3) ALSA gets notified of the new audio channel
4) PulseAudio gets notified of the new channel and can reroute the channels

I think the key word here is YMMV, and a lot of it is up to your GPU driver
as that's where the HDMI interaction obviously happens.

Ross

--001a11354a0075026c0516101d69
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 May 2015 at 20:40, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":2tn" class=3D"a3s" style=
=3D"overflow:hidden">Interesting - gst-play/gtk-play works correctly on thi=
s target.<br>
Now I have to figure out why it doesn&#39;t work on the other systems<br>
I tested.<br>
<br>
Should I submit bugs against the QEMU targets as they get it<br>
even more wrong than the i.MX6 targets??<br>
<br>
Query: my laptop [test device] has two ALSA sound devices,<br>
HDMI and the internal PCH.=C2=A0 It has picked the HDMI as default<br>
and I get no sound when no HDMI monitor attached.=C2=A0 How do I<br>
select the other sound device (from sato desktop would be<br>
best, but I&#39;d settle for any answer)</div></blockquote></div><br>Ah, th=
e old audio playback problem.=C2=A0 There&#39;s a bug for that.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Sato doesn&#39;t =
have a GUI for this right now but the good news is that this is something y=
ou can probably fiddle with alsamixer for now, and in master we&#39;ll be i=
ntegrating PulseAudio properly so ideally it re-routes the audio when HDMI =
is hotplugged. =C2=A0 Obviously at this point you&#39;re expecting this ser=
ies of events to actually work:</div><div class=3D"gmail_extra">1) GPU dete=
cts HDMI hotplug</div><div class=3D"gmail_extra">2) GPU probes HDMI, detect=
s audio channel</div><div class=3D"gmail_extra">3) ALSA gets notified of th=
e new audio channel</div><div class=3D"gmail_extra">4) PulseAudio gets noti=
fied of the new channel and can reroute the channels</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">I think the key word here is=
 YMMV, and a lot of it is up to your GPU driver as that&#39;s where the HDM=
I interaction obviously happens.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a11354a0075026c0516101d69--
