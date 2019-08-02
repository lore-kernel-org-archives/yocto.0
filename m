Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCF95E00E82; Fri,  2 Aug 2019 04:08:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04370E0097C
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 04:08:57 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id r6so54455622qkc.0
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 04:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=fu5zhaYCQUu3lRM0i1U4X/qHRFBibLoqkQX4lMHU/Cg=;
	b=Tn6Mo8iZbMqZ3PRPaucDcXCWMMBmx0qyCyc8LcaMVasYna/tADazfkcSLSUIfWvLye
	kKEf0KRSgUiSOLWk9nxxSvGoOS7qa7QnbD3KvZIDl2X7Vm4oXpcpuepDubw5rs7HQ9bB
	ZEvXOB1Iin3sombe7gzsI34a5+lIuX1QFFI/Yhx2//+n2XrG1ByT/MGBgriHWMDPXPXs
	iPvNpy99OdYT+/HUfocT7Z2JIlvC18wYG83wiepQZ+E3UQgrbXXBGw/euTo/BTyf8zYe
	V+SV08Z/f6qk1bnXmFJQ1J6AR1jSaFgAqZADZKz7LHj4UYdRDCofsheReKsCgDXh+vAg
	CwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=fu5zhaYCQUu3lRM0i1U4X/qHRFBibLoqkQX4lMHU/Cg=;
	b=b3x4/U6CbaKRLsmZSmCoABsCnbMABZYF+ngepfSihJoO3/20ZSs3IQuuip6FAGKvmU
	ARc/GXcWuzFNfQSOZ9WOrFjfmPHHOnApxBHs5N/fAbeJTEDFCE+pRN9wn1yFTxI+F+Bw
	0DWn98NBw0Dlp1YxdPVAxugCjmW96KZG07IjxofBiAyjsSFuF0tEzbAKBntEXagiJp6r
	WKB6K0z4AwA+JahJpc0ocg0IHwemc39zZLSgTFqKq5/zQW5AgbvT/c/BPMLGUqPSWC/q
	iLR8gNx2dY4Roc4VDpVQ1MCLj7D4GTabeiTpB0lVyI8Iwk8qjBkPU7oIM5ZBmucn/ldT
	xCKQ==
X-Gm-Message-State: APjAAAVHZQ+kdz/0RZY97BPK4+pWvIu+RzK5ZPcg7SDg6b+/LgguzPfl
	Uh4dcgnDtwjffdrCynuc7NqgEGc+i7tCo0T2WQj+y98fDy8=
X-Google-Smtp-Source: APXvYqyvFU5zxyb9yoQH92QXanfpaoiYuInO4CP2iOKKVt8HGEUhbuwB54LjejOar67jU0ay+IrIhRJdI/jAGdTBIqU=
X-Received: by 2002:ae9:c106:: with SMTP id z6mr93774291qki.285.1564744135356; 
	Fri, 02 Aug 2019 04:08:55 -0700 (PDT)
MIME-Version: 1.0
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Fri, 2 Aug 2019 12:08:44 +0100
Message-ID: <CAD0U-hKzQgF2wVnsjDLLanTiK3T=Ae8qb7dUy+qYbv=B9kUnXQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: openembedded <openembedded@lists.linaro.org>
Subject: /var/volatile not mounted as tmpfs on read-only rootfs when migrating to Warrior
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
X-List-Received-Date: Fri, 02 Aug 2019 11:08:59 -0000
Content-Type: multipart/alternative; boundary="0000000000005a4a0a058f20626c"

--0000000000005a4a0a058f20626c
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a working system based on Sumo. The system boots with a read-only
rootfs, then applies are read-write overlay for /etc.

When I migrate to Warrior, systemd-resolved fails to start. If I mount the
same rootfs via NFS, it starts and works fine.  systemd-timesyncd is also
failing, but I haven't looked into that yet. It also works fine on the NFS
mounted system.

The resolve problem seems to be caused by two things:
    - /var/volatile is read-only
    - /run/systemd/resolve has the wrong ownership
      drwxr-xr-x  2 systemd-network systemd-journal  80 Jul 12 16:23
resolve/
      I think this permissions problem may be a result of the /var/volatile
mounting
      problems; it looks fine on the NFS mounted system.

If I manually mount /var/volatile (it's in fstab) and change the ownership
on /run/systemd/resolve, the service starts just fine.

I also notice that /tmp is not mounted at all, which may be related.

Here are the various tmp mount points on my read-only rootfs:

$ mount | grep tmp
devtmpfs on /dev type devtmpfs
(rw,nosuid,size=112036k,nr_inodes=28009,mode=755)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755)
overlay on /etc type overlay
(rw,relatime,lowerdir=/tmp/lower/etc,upperdir=/tmp/upper/etc,workdir=/tmp/upper/work/etc)
tmpfs on /run/user/0 type tmpfs
(rw,nosuid,nodev,relatime,size=23840k,mode=700)

On the NFS mounted system, I see these:

$ mount | grep tmp
devtmpfs on /dev type devtmpfs
(rw,relatime,size=118180k,nr_inodes=29545,mode=755)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755)
tmpfs on /tmp type tmpfs (rw,nosuid,nodev)
tmpfs on /var/volatile type tmpfs (rw,relatime)
tmpfs on /run/user/0 type tmpfs
(rw,nosuid,nodev,relatime,size=23840k,mode=700)

As you can see, NFS has these extra mounts:

tmpfs on /tmp type tmpfs (rw,nosuid,nodev)
tmpfs on /var/volatile type tmpfs (rw,relatime)

I've tried reverting a few commits that may be related, but I haven't had
any luck working out things have changed, eg:

c4acf1b531  2018-10-19  volatile-binds: use overlayfs if available
             [Matt Hoosier]

Advice would be appreciated. Are there any particular areas I should be
looking to work out what's going wrong?

Kind regards,
Ryan.

--0000000000005a4a0a058f20626c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a working system based on Su=
mo. The system boots with a read-only rootfs, then applies are read-write o=
verlay for /etc.</div><div><br></div><div>When I migrate to Warrior, system=
d-resolved fails to start. If I mount the same rootfs via NFS, it starts an=
d works fine.=C2=A0=C2=A0systemd-timesyncd is also failing, but I haven&#39=
;t looked into that yet. It also works fine on the NFS mounted system.</div=
><div><br></div><div>The resolve problem seems to be caused by two things:<=
/div><div>=C2=A0 =C2=A0 - /var/volatile is read-only</div><div>=C2=A0 =C2=
=A0 - /run/systemd/resolve has the wrong ownership</div><div>=C2=A0 =C2=A0 =
=C2=A0 drwxr-xr-x =C2=A02 systemd-network systemd-journal =C2=A080 Jul 12 1=
6:23 resolve/</div><div>=C2=A0 =C2=A0 =C2=A0 I think this permissions probl=
em may be a result of the /var/volatile mounting</div><div>=C2=A0 =C2=A0 =
=C2=A0 problems; it looks fine on the NFS mounted system.</div><div><br></d=
iv><div>If I manually mount /var/volatile (it&#39;s in fstab) and change th=
e ownership on /run/systemd/resolve, the service starts just fine.</div><di=
v><br></div><div>I also notice that /tmp is not mounted at all, which may b=
e related.</div><div><br></div><div>Here are the various tmp mount points o=
n my read-only rootfs:</div><div><br></div><div>$ mount | grep tmp</div><di=
v>devtmpfs on /dev type devtmpfs (rw,nosuid,size=3D112036k,nr_inodes=3D2800=
9,mode=3D755)<br>tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)<br>tmpfs on=
 /run type tmpfs (rw,nosuid,nodev,mode=3D755)<br>tmpfs on /sys/fs/cgroup ty=
pe tmpfs (ro,nosuid,nodev,noexec,mode=3D755)<br>overlay on /etc type overla=
y (rw,relatime,lowerdir=3D/tmp/lower/etc,upperdir=3D/tmp/upper/etc,workdir=
=3D/tmp/upper/work/etc)<br>tmpfs on /run/user/0 type tmpfs (rw,nosuid,nodev=
,relatime,size=3D23840k,mode=3D700)<br><br>On the NFS mounted system, I see=
 these:</div><div><br></div><div>$ mount | grep tmp<br>devtmpfs on /dev typ=
e devtmpfs (rw,relatime,size=3D118180k,nr_inodes=3D29545,mode=3D755)<br>tmp=
fs on /dev/shm type tmpfs (rw,nosuid,nodev)<br>tmpfs on /run type tmpfs (rw=
,nosuid,nodev,mode=3D755)<br>tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,=
nodev,noexec,mode=3D755)<br>tmpfs on /tmp type tmpfs (rw,nosuid,nodev)<br>t=
mpfs on /var/volatile type tmpfs (rw,relatime)<br>tmpfs on /run/user/0 type=
 tmpfs (rw,nosuid,nodev,relatime,size=3D23840k,mode=3D700)<br><br>As you ca=
n see, NFS has these extra mounts:</div><div><br></div>tmpfs on /tmp type t=
mpfs (rw,nosuid,nodev)<br><div>tmpfs on /var/volatile type tmpfs (rw,relati=
me)<br></div><div><br></div><div>I&#39;ve tried reverting a few commits tha=
t may be related, but I haven&#39;t had any luck working out things have ch=
anged, eg:</div><div><br></div><div>c4acf1b531 =C2=A02018-10-19 =C2=A0volat=
ile-binds: use overlayfs if available =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[Matt Hoosier]=C2=A0<br></div><div=
><br></div><div>Advice would be appreciated. Are there any particular areas=
 I should be looking to work out what&#39;s going wrong?</div><div><br></di=
v><div>Kind regards,</div><div>Ryan.</div></div>

--0000000000005a4a0a058f20626c--
