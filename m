Return-Path: <rjiejie@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8EFE013D6;
	Fri, 12 Jul 2013 03:35:26 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id y10so8550896pdj.28
	for <multiple recipients>; Fri, 12 Jul 2013 03:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:message-id:subject:x-mailer:mime-version
	:content-type; bh=LBYG4jsmDDTnALMhNKmkMbJbX5gApfE6oE+3h261YAA=;
	b=pUNF7gyKwu7Aw8MhbehK1UdPib/q7sJHWpqjrKYiyNAUpS5XjawIy4LKHBYNbn/MN5
	A0QMQbLQBlAoXZe9byBsw0SLv/R8AGTikbp1JfqgB3bXNCPSJZ7UQ7nASAbujb/RXskO
	coA8GESZaW2wD1LlhTW2DcP9NPEy/tHp1WtyoHRqi4g91EB8SDNFInuy7rlB3r+16Opt
	5K0+BD13mWhaklPM0zfMmZnH0AIWLjrN2JevLxRq+gORVh5gemPLDtKbZgs8Qns9Qqy7
	uOj8oG3odg8uke1AT45KB1hVnw7Pr5eSNHetmEhxi8CslgLreAaSU3U91AloJeyJSzxk
	Vx5A==
X-Received: by 10.67.14.100 with SMTP id ff4mr41953560pad.174.1373625326537;
	Fri, 12 Jul 2013 03:35:26 -0700 (PDT)
Received: from [192.168.10.135] ([115.236.28.242])
	by mx.google.com with ESMTPSA id
	re16sm47394600pac.16.2013.07.12.03.35.22 for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 12 Jul 2013 03:35:25 -0700 (PDT)
Date: Fri, 12 Jul 2013 18:35:17 +0800
From: jojo <rjiejie@gmail.com>
To: "=?utf-8?Q?meta-freescale=40yoctoproject.org?="
	<meta-freescale@yoctoproject.org>
Message-ID: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
X-Mailer: sparrow 1.6.4 (build 1176)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-freescale] how to install pulseaudio completely
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
X-List-Received-Date: Fri, 12 Jul 2013 10:35:28 -0000
Content-Type: multipart/alternative; boundary="51dfdbe5_3f6ab60f_254"

--51dfdbe5_3f6ab60f_254
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi, 
My yocto version/tag is dylan.

I have compiled fsl-image-gui to testing the the audio output, but i can not find
anything about for pulseaudio server to start up daemon.

I saw the build code in the path about for "build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r0/image/"
and it really have built all things of pulseaudio. but when i create the fsl-image-gui to start up, i just find "libpulse*" in the
rootfs.

I think that something wrong with pulseaudio configure so that it do not install completely by default.

someone know about that how to install pulseaudio completely ? 

Thanks,

- Jojo


--51dfdbe5_3f6ab60f_254
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div>Hi,
                </div><div><span class=3D=22Apple-tab-span=22 style=3D=22=
white-space:pre=22>	</span>My yocto version/tag is dylan.</div><div><span=
 class=3D=22Apple-tab-span=22 style=3D=22white-space:pre=22>	</span></div=
><div><span class=3D=22Apple-tab-span=22 style=3D=22white-space:pre=22>	<=
/span>I have compiled fsl-image-gui to testing the the audio output, but =
i can not find</div><div><span class=3D=22Apple-tab-span=22 style=3D=22wh=
ite-space:pre=22>	</span>anything about for pulseaudio server to start up=
 daemon.</div><div><br></div><div><span class=3D=22Apple-tab-span=22 styl=
e=3D=22white-space:pre=22>	</span>I saw the build code in the path about =
for =22build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r=
0/image/=22</div><div><span class=3D=22Apple-tab-span=22 style=3D=22white=
-space:pre=22>	</span>and it really have built all things of pulseaudio. =
but when i create the fsl-image-gui to start up, i just find =22libpulse*=
=22 in the</div><div><span class=3D=22Apple-tab-span=22 style=3D=22white-=
space:pre=22>	</span>rootfs.</div><div><br></div><div><span class=3D=22Ap=
ple-tab-span=22 style=3D=22white-space:pre=22>	</span>I think that someth=
ing wrong with pulseaudio configure so that it do not install completely =
by default.</div><div><br></div><div><span class=3D=22Apple-tab-span=22 s=
tyle=3D=22white-space:pre=22>	</span>someone know about that how to insta=
ll pulseaudio completely =3F</div>
                <div><div><br></div><div>Thanks,</div><div><br></div><div=
>- Jojo</div><div><br></div></div>
            

--51dfdbe5_3f6ab60f_254--
