Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDA80E007DA; Fri, 25 May 2018 06:20:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02FD0E007AD
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 06:20:22 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id d5-v6so1516173oib.5
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 06:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wpFuqhFV5MHjBoBOXE9VAX39gJSlQhCuZZ8HnwH6ZJk=;
	b=Ci+NkZiMyuKGOYlzRpfzs6yry398w7N++UqvnWvvCH+/HtwBiyqMGvLON6a+YoDzAE
	hQkOYVTAYbVS1rseDCyiBBW78aOCLn+SWW8wDEoXlGvTZzLGAY3ag8e2Y/V+lNZWSRm/
	qHZ6hN5AO+IAtRh/+MHrqAXD461rZwsXajSpAJ3Uc2MYSx4vclHa8aJY761ExiP6TOAD
	lXhFd8BxoGA5XRM+sE2jxO/TJIz0mH6TpB9ApLvSZzOFky67O7S7xpnz2XfgmOYlDoGi
	GRGo8G3DwYN22vT6ZgtPq3RGJUh74YLhLpPBs0eFqHCeIDkYBBUkqwykaFL8Nh8awUV0
	t4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wpFuqhFV5MHjBoBOXE9VAX39gJSlQhCuZZ8HnwH6ZJk=;
	b=OA3v8+GLSwJ1l9PwHRsvZYABjA/RrcZjGNNecT6k/kfHyKKSV2h9vKLKBQ9QGmjzpt
	gZN90m6JHhbTvG15GenkgrDl39c7JeG2OVX7witRDTgTb6RaZgAWEOgdrJ1ZZUfXd1ZF
	jO6Fpj5qj5cHFhIZyTO2jGTnov0xyDryyRhLQW2/2XeT60iYe+jtCmLQNJJ47Gk1NdOd
	U2V1WdZpoKBRAHyo6TubrNouhUCZeVd1loO2/HqRFnPa/iPHIxhpPbFILmF8oEkf6cSN
	5ebYcEQ2J/30fo54vS7cP1F7gly6q5YlOmgVGIXMC9MZtpfLQuSLLWe0k2Q2PM/zfQfK
	Cz/A==
X-Gm-Message-State: ALKqPweA/HGJODBn0f6ms5IEbO0U00RSEQINHvF6PcPpwYqtkS2uYanE
	xz54ZK9qDAinzRIGkZnQ9XPHpama4BaFKS1ULGM=
X-Google-Smtp-Source: AB8JxZo75cnQR8ANEfGEuOCV5QFABDcdprNsG67NgUEMwHgAJcQz5EjIYPDp9pYEn1zt4STQWj0zQTfIPtxkbQcIrME=
X-Received: by 2002:aca:488d:: with SMTP id
	v135-v6mr1376571oia.142.1527254422310; 
	Fri, 25 May 2018 06:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAJqXeOwTyTasp31EapH2jO8WFmY-Tz-CjDp2CAUpcs=3Dxsqhg@mail.gmail.com>
	<CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
In-Reply-To: <CAFNP8Os4zOcGhTU7EV8_YrWFu=8-jPLqTMvb+VQgN6BhgN9FDw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 25 May 2018 06:20:11 -0700
Message-ID: <CAFNP8OuG_qw_jZ6MzaOT3ftTSKMxyJdZJit0LOu52t9PAUCmcQ@mail.gmail.com>
To: nikhkkv@gmail.com
Cc: yocto@yoctoproject.org
Subject: Yocto
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
X-List-Received-Date: Fri, 25 May 2018 13:20:23 -0000
Content-Type: multipart/alternative; boundary="00000000000052d1eb056d07a163"

--00000000000052d1eb056d07a163
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, May 25, 2018, 6:18 AM
Subject: Fwd: Yocto
To: <yocto@yoctoproject.org>


Hi Nikhil,

I am forwarding your email to the Yocto Project email group.  Someone there
can better help you with your questions.  I take care of the Yocto manual
set.

Thanks,
Scott Rifenbark

---------- Forwarded message ---------
From: nikh kkvv <nikhkkv@gmail.com>
Date: Fri, May 25, 2018, 6:03 AM
Subject: Yocto
To: <srifenbark@gmail.com>


Hi srifenbark,


I am Nikhil working as soft ware engineer in kerala.

Currently i am working with a project which require yocto based file system.
I am using sama5d36-xplained evaluation kit.

Based on the information from the following site
http://www.at91.com/linux4sam/bin/view/Linux4SAM/YoctoProject build a file
system which support qt images and tested successfully.

Is there any way to  avoid this demo images from this build and add qt
support for bitbake core-image minimal process.


Regards
Nikhil

--00000000000052d1eb056d07a163
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
---------- Forwarded message ---------<br>From: Scott Rifenbark &lt;<a href=
=3D"mailto:srifenbark@gmail.com">srifenbark@gmail.com</a>&gt;<br>Date: Fri,=
 May 25, 2018, 6:18 AM<br>Subject: Fwd: Yocto<br>To:  &lt;<a href=3D"mailto=
:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br></div><br><br><d=
iv dir=3D"auto"><div>Hi Nikhil,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I am forwarding your email to the Yocto Project email group.=C2=
=A0 Someone there can better help you with your questions.=C2=A0 I take car=
e of the Yocto manual set.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Thanks,</div><div dir=3D"auto">Scott Rifenbark<br><br><div class=3D"gmai=
l_quote" dir=3D"auto"><div dir=3D"ltr">---------- Forwarded message -------=
--<br>From: nikh kkvv &lt;<a href=3D"mailto:nikhkkv@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">nikhkkv@gmail.com</a>&gt;<br>Date: Fri, May 25, 20=
18, 6:03 AM<br>Subject: Yocto<br>To:  &lt;<a href=3D"mailto:srifenbark@gmai=
l.com" target=3D"_blank" rel=3D"noreferrer">srifenbark@gmail.com</a>&gt;<br=
></div><br><br><div dir=3D"ltr"><div>Hi srifenbark,</div><div><br></div><di=
v><br></div><div>I am Nikhil working as soft ware engineer in kerala.</div>=
<div><br></div><div>Currently i am working with a project which require yoc=
to based file system.</div><div>I am using sama5d36-xplained evaluation kit=
.</div><div><br></div><div>Based on the information from the following site=
 <br></div><div><a href=3D"http://www.at91.com/linux4sam/bin/view/Linux4SAM=
/YoctoProject" rel=3D"noreferrer noreferrer" target=3D"_blank">http://www.a=
t91.com/linux4sam/bin/view/Linux4SAM/YoctoProject</a> build a file system w=
hich support qt images and tested successfully.<br></div><div><br></div><di=
v>Is there any way to=C2=A0 avoid this demo images from this build and add =
qt support for bitbake core-image minimal process.</div><div><br></div><div=
><br></div><div>Regards</div><div>Nikhil<br></div></div>
</div></div></div></div></div></div>

--00000000000052d1eb056d07a163--
