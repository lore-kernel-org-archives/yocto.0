Return-Path: <serg.lychagin@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2169E00307
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 01:31:44 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywb26 with SMTP id 26so2984686ywb.35
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 01:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=3u5afOYvx0DVvPUJ6WXTTv17jilvmZNNesiAgFDz8Xw=;
	b=GzJPZqDPxBHv6C58dinR1uVN0t7gFsBabCqob44GC2SjrHSbDIMjUaRW8meLJccxEi
	T4zL83qI700XR/lGDjvfV3uEPM/X5/wLmHRWSPog3cKbvi2GKqjnZKR0hz18M1x1y5gM
	3nIdFt4WpAu+h4/dIyy8vt3pjCgK0IzqNGEc8=
MIME-Version: 1.0
Received: by 10.68.20.233 with SMTP id q9mr7781469pbe.99.1321608703404; Fri,
	18 Nov 2011 01:31:43 -0800 (PST)
Received: by 10.68.66.8 with HTTP; Fri, 18 Nov 2011 01:31:43 -0800 (PST)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16EB98D5@ORSMSX101.amr.corp.intel.com>
References: <CAMVXEj+bjMKtrxUwAYpEiigLTEe9ywuq=wWLgAk=WeebVZq0zg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16EB98D5@ORSMSX101.amr.corp.intel.com>
Date: Fri, 18 Nov 2011 12:31:43 +0300
Message-ID: <CAMVXEjKAoYi21xo8nz5H3Lf0Yi3Fd_uQE+D-F02SQtmAAawi7w@mail.gmail.com>
From: Sergey Lychagin <serg.lychagin@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemuarm: Unable to mount rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Nov 2011 09:31:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Jessica,

The answer for all you questions is yes. I made installation according
to the manual.
I've spent some time to investigate the issue. Unfortunately it is
still unresolved. But I found something interesting.
What I have checked:
0. Output from kernel has been redirected to file and analyzed: kernel
supports NFS (but cannot mount rootfs).
1. Firewall was disabled.
2. /etc/export has been updated with path to rootfs on host machine.
nfs daemon has bene restarted after that.
3. 'ifconfig' shows that tap0 interface has been created.
4. 'rpcinfo' shows that both programs (from rpc.mountd & rpc.nfsd) are runn=
ing.
5. 'rpcinfo -m' points that there were some problems with mountd
(PMAP_GETPORT for 21111 has some failures)
6. '/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/pseudolog
-F"%a(%m) %o %p %r %T"' indicates several failure with mountd:

-(755) stat /opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/sbin/rpc.mountd=
 fail

7. somewhere (i don't remember) i saw warnings that pseudo cannot write its=
 log.

what i did then:

I introduced a pause into 'runqemu-internal' script (just before
starting 'distccc' and after start of 'rpc.mountd' & 'rpc.nfsd'). When
the pause happens I started 'qemu-system-arm' in different console.
The command-line for qemu start didn't contain
'mountprog=3D21111,nfsprog=3D11111,udp' parameters for kernel (the other
parameters were kept).
After that kernel started to loading. I saw a splash-screen and after
that it got stucked. Screenshot: http://imgur.com/7bL1M

So, I guess there is something wrong with rpc binding. Probably I need
to update some config to have default script working.
And new problem: yocto distro cannot be loaded finally (freezy on
splash-screen - progress bar is almost finished)
Do you have any ideas how to overcome it?

Thanks in advance
Sergey

On Wed, Nov 16, 2011 at 11:02 PM, Zhang, Jessica
<jessica.zhang@intel.com> wrote:
>
> Hi Sergey,
>
>
>
> Couple questions:
>
>
>
> 1.=A0=A0=A0=A0=A0=A0 So did you extract your qemuarm rootfs using runquem=
-extract-sdk to a directory?
>
> 2.=A0=A0=A0=A0=A0=A0 Point to that directory as sysroot in your Eclipse p=
reference setup page (all of this should be covered in the ADT manual)?
>
> 3.=A0=A0=A0=A0=A0=A0 Can you open an xterm and look for qemu process and =
kill all of them and retry launch?
>
>
>
> Thanks,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Sergey Lychagin
> Sent: Wednesday, November 16, 2011 4:07 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] qemuarm: Unable to mount rootfs
>
>
>
> Hello,
>
> I've faced the following problem: "VFS: unable to mount root fs via NFS" =
during staring pre-compiled kernel/rootfs images in quemu.
> The screen-shot: http://imgur.com/XtvRc
> I'm trying to start it via Eclipse as it is shown in http://vimeo.com/305=
57368
>
> I also followed the instructions described ADT user guide: http://www.yoc=
toproject.org/docs/current/adt-manual/adt-manual.html
> Target is qemuarm. kernel & rootfs (core-image-sato-sdkqemuarm & zImage-q=
emuarm.bin) are precompiled and downloaded from here: http://downloads.yoct=
oproject.org/releases/yocto/yocto-1.1/machines/qemu/qemuarm/
>
> As far as I know this kernel image should support NFS.
> Could you please help me?
>
> Thanks in advance
> Sergey

