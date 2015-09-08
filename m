Return-Path: <edivya.vyas@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFC6FE00BB3; Mon,  7 Sep 2015 23:32:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edivya.vyas[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ECE7E00B19
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 23:32:08 -0700 (PDT)
Received: by obbbh8 with SMTP id bh8so75609140obb.0
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 23:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nXlz4jwgp7J2OG8tYORvTKSyW9886trOlJwgqf/WW/Y=;
	b=qI5AjTHeacxvtkjyZSuwYaeFVc7rPuZ0TnIbkJGd/LvZ9dLCYK1U8Y8A1/AuvqswJE
	X8x60OgJlebpsysq5TLve26l/mgZL8Smp5873P8/ySOMqNt8/GG/RhctOuukQ0Fiz4dR
	87WgNyG20It5tyDidzgd2+6fLLByRminyu8Lv6cE8tp1MFRFG+w91NGLOFjsV5Zk16yw
	DHHYyWsGJKIgeS9QqdBfh/Z/yHnDFPovV9WNt5bTQPeN7cFZnKbBvvz+4X7ez7fdGmSR
	au9Xhlln9+bagenMgge7lBtIOOr3veXDOx/65rSnRh1E4W0pwwQvqCvenSkOYHun/EMH
	iL+Q==
X-Received: by 10.60.79.193 with SMTP id l1mr17708705oex.60.1441693928414;
	Mon, 07 Sep 2015 23:32:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.38.137 with HTTP; Mon, 7 Sep 2015 23:31:49 -0700 (PDT)
In-Reply-To: <CAE_REAv6w13WaNW3Ov142Cc5OjDsdZt8tEqPSn6FWdsORbD+6Q@mail.gmail.com>
References: <CAGfiMvD-RLdedD9hJQOEiwnh5MJ7tzdoB2gthchq1=+EeceEBQ@mail.gmail.com>
	<CAE_REAv6w13WaNW3Ov142Cc5OjDsdZt8tEqPSn6FWdsORbD+6Q@mail.gmail.com>
From: Divya Vyas <edivya.vyas@gmail.com>
Date: Tue, 8 Sep 2015 12:01:49 +0530
Message-ID: <CAGfiMvDXSd4=N3GLOYhi+M24PoFZ1MaLNMjw9efyh9ydJn3mXA@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SELinux XATTR error - check_rootsfs failing
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
X-List-Received-Date: Tue, 08 Sep 2015 06:32:09 -0000
Content-Type: multipart/alternative; boundary=089e011773737a63de051f3686a2

--089e011773737a63de051f3686a2
Content-Type: text/plain; charset=UTF-8

Hi Gaurang,

I tried to debug the script and found that root filesystem was mounting as
read-only mode which is preventing to label the filesystem.

Is this script calling when root filesystem is mounted ro mode? My fstab is
default one. For a workaround I added a remount in rw mode step in
selinux-init script before check_rootfs.

Thanks,
Divya





On Tue, Sep 8, 2015 at 11:25 AM, Gaurang Shastri <gmshastri@gmail.com>
wrote:

> Hi Divya,
>
> May be you can go through this script and find out what is wrong:
> meta-selinux/recipes-security/selinux/selinux-config/
>
> *selinux-init.sh*
> //Gaurang Shastri
>
>
> On Sun, Sep 6, 2015 at 11:11 PM, Divya Vyas <edivya.vyas@gmail.com> wrote:
>
>> Hi,
>>
>> Hi,
>>
>> I am getting this error while booting the selinux enabled image
>> (core-image-selinux)
>>
>>
>> * SELinux requires the root '/' filesystem support extended
>>   filesystem attributes (XATTRs).  It does not appear that this
>>   filesystem has extended attribute support or it is not enabled.
>>
>>   - To continue using SELinux you will need to enable extended
>>     attribute support on the root device.
>>
>>   - To disable SELinux, please add "selinux=0" in the kernel
>>     command line.
>>
>> * Halting the system now.
>>
>> My fstab is below :
>>
>> rootfs                  /               ext3
>> defaults,acl,user_xattr 0 1
>>
>>
>> Here is the kernel  configuration :
>>
>> KERNEL_CONFIG_AUDIT="y"
>> KERNEL_CONFIG_NETWORK_SECMARK=
>> "y"
>> KERNEL_CONFIG_EXT2_FS_SECURITY="y"
>> KERNEL_CONFIG_EXT3_FS_SECURITY="y"
>> KERNEL_CONFIG_EXT4_FS_SECURITY="y"
>> KERNEL_CONFIG_EXT2_FS_ATTR="y"
>> KERNEL_CONFIG_EXT3_FS_ATTR="y"
>> KERNEL_CONFIG_JFS_SECURITY="y"
>> KERNEL_CONFIG_REISERFS_FS_SECURITY="y"
>> KERNEL_CONFIG_JFFS2_FS_SECURITY="y"
>> KERNEL_CONFIG_SECURITY_NETWORK="y"
>> KERNEL_CONFIG_SECURITY_SELINUX="y"
>> KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM="y"
>> KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE="1"
>> KERNEL_CONFIG_SECURITY_SELINUX_DISABLE="y"
>> KERNEL_CONFIG_SECURITY_SELINUX_DEVELOP="y"
>> KERNEL_CONFIG_SECURITY_SELINUX_AVC_STATS="y"
>> KERNEL_CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE="1"
>> KERNEL_CONFIG_SECURITY="y"
>> KERNEL_CONFIG_SECURITYFS="y"
>> KERNEL_CONFIG_AUDIT_GENERIC="y"
>> KERNEL_CONFIG_DEFAULT_SECURITY_SELINUX="y"
>> KERNEL_CONFIG_SECURITY_PATH="y"
>>
>> My filesystem is ext3 . I think all configs are enabled.
>>
>>
>> Any idea where is the problem?
>>
>> Thanks,
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--089e011773737a63de051f3686a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Gaurang,<br><br></div>I tried to de=
bug the script and found that root filesystem was mounting as read-only mod=
e which is preventing to label the filesystem.<br><br></div>Is this script =
calling when root filesystem is mounted ro mode? My fstab is default one. F=
or a workaround I added a remount in rw mode step in selinux-init script be=
fore check_rootfs.<br><br></div>Thanks,<br></div>Divya<br><div><div><br><br=
><div><br><br></div></div></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Tue, Sep 8, 2015 at 11:25 AM, Gaurang Shastri <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">g=
mshastri@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div>Hi Divya,<br><br></div>May be you can go through this=
 script and find out what is wrong:<br><div>
      <span><span><span>meta-selinux</span></span></span><span>/</span><spa=
n><span>recipes-security</span></span><span>/</span><span><span>selinux</sp=
an></span><span>/</span><span><span>selinux-config</span></span><span>/</sp=
an><strong>selinux-init.sh<br><br></strong></div><div><span>//Gaurang Shast=
ri<br></span>
    </div>
  <br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div>=
<div class=3D"h5">On Sun, Sep 6, 2015 at 11:11 PM, Divya Vyas <span dir=3D"=
ltr">&lt;<a href=3D"mailto:edivya.vyas@gmail.com" target=3D"_blank">edivya.=
vyas@gmail.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div><div class=3D"h5"><div dir=3D"ltr">Hi,<br><br><div>Hi,<br><br>=
</div><div>I am getting this error while booting the selinux enabled image =
(core-image-selinux) <br><br><br>* SELinux requires the root &#39;/&#39; fi=
lesystem support extended<br>=C2=A0 filesystem attributes (XATTRs).=C2=A0 I=
t does not appear that this<br>=C2=A0 filesystem has extended attribute sup=
port or it is not enabled.<br><br>=C2=A0 - To continue using SELinux you wi=
ll need to enable extended<br>=C2=A0=C2=A0=C2=A0 attribute support on the r=
oot device.<br><br>=C2=A0 - To disable SELinux, please add &quot;selinux=3D=
0&quot; in the kernel<br>=C2=A0=C2=A0=C2=A0 command line.<br><br>* Halting =
the system now.<br><br></div><div>My fstab is below :<br></div><br>rootfs=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ext3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaults,acl,user_xattr 0 1 <br><br><b=
r>Here is the kernel=C2=A0 configuration :<br><br>KERNEL_CONFIG_AUDIT=3D&qu=
ot;y&quot;<br>KERNEL_CONFIG_NETWORK_SECMARK=3D<div>&quot;y&quot;<br>KERNEL_=
CONFIG_EXT2_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT3_FS_SECURITY=
=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT4_FS_SECURITY=3D&quot;y&quot;<br>KERNE=
L_CONFIG_EXT2_FS_ATTR=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT3_FS_ATTR=3D&quot=
;y&quot;<br>KERNEL_CONFIG_JFS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_REI=
SERFS_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_JFFS2_FS_SECURITY=3D&quo=
t;y&quot;<br>KERNEL_CONFIG_SECURITY_NETWORK=3D&quot;y&quot;<br>KERNEL_CONFI=
G_SECURITY_SELINUX=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_BOOTPA=
RAM=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D&qu=
ot;1&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_DISABLE=3D&quot;y&quot;<br>KER=
NEL_CONFIG_SECURITY_SELINUX_DEVELOP=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURI=
TY_SELINUX_AVC_STATS=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_CHEC=
KREQPROT_VALUE=3D&quot;1&quot;<br>KERNEL_CONFIG_SECURITY=3D&quot;y&quot;<br=
>KERNEL_CONFIG_SECURITYFS=3D&quot;y&quot;<br>KERNEL_CONFIG_AUDIT_GENERIC=3D=
&quot;y&quot;<br>KERNEL_CONFIG_DEFAULT_SECURITY_SELINUX=3D&quot;y&quot;<br>=
KERNEL_CONFIG_SECURITY_PATH=3D&quot;y&quot;<br><br></div>My filesystem is e=
xt3 . I think all configs are enabled. <br><br><br><div>Any idea where is t=
he problem?<br><br></div>Thanks,<br></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--089e011773737a63de051f3686a2--
