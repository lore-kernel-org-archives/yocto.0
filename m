Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79597E00D39; Mon,  7 Sep 2015 22:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 519A9E00A3B
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 22:55:03 -0700 (PDT)
Received: by igxx6 with SMTP id x6so8855495igx.1
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 22:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Wlci4Va+3YQ5cHx0b6BoO4sMhmWl+J2Fzai9S1J27es=;
	b=I5Mkpv9wBlyhQw+cbbWk1paA8qU5nC7V7JW9Vub6biEtSDdOZI88jRtOE9Bu4n8UhW
	xtGPFM1Xev3NwMOjukZt4hSfMrqsZNpdknzB31r2WyA/x+OWSN62OOR4+nW/3JEEa7BX
	glyeVVbO9HVm2unMRerknLNmuyMDsq8HU6G06yWSeHbrT4VF0ufnTehHq4IujRfsCcTA
	nzdhSk/uf2ZtKFHeB+y96llGRNHWLQ0YN6BbOLQxyA4/Q8fmLon4x1HqoDpmKmqSbLhP
	p3dbzGrSM6WoEzkFeAcOGAmzsKIhgN0e/xSQWp4cano3IE4p8vx7KE6pJbdPmKxJi0ot
	Q+nQ==
MIME-Version: 1.0
X-Received: by 10.50.138.72 with SMTP id qo8mr38348278igb.46.1441691703468;
	Mon, 07 Sep 2015 22:55:03 -0700 (PDT)
Received: by 10.64.0.199 with HTTP; Mon, 7 Sep 2015 22:55:03 -0700 (PDT)
In-Reply-To: <CAGfiMvD-RLdedD9hJQOEiwnh5MJ7tzdoB2gthchq1=+EeceEBQ@mail.gmail.com>
References: <CAGfiMvD-RLdedD9hJQOEiwnh5MJ7tzdoB2gthchq1=+EeceEBQ@mail.gmail.com>
Date: Tue, 8 Sep 2015 11:25:03 +0530
Message-ID: <CAE_REAv6w13WaNW3Ov142Cc5OjDsdZt8tEqPSn6FWdsORbD+6Q@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Divya Vyas <edivya.vyas@gmail.com>
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
X-List-Received-Date: Tue, 08 Sep 2015 05:55:08 -0000
Content-Type: multipart/alternative; boundary=001a1134c792dc6917051f3601cf

--001a1134c792dc6917051f3601cf
Content-Type: text/plain; charset=UTF-8

Hi Divya,

May be you can go through this script and find out what is wrong:
meta-selinux/recipes-security/selinux/selinux-config/

*selinux-init.sh*
//Gaurang Shastri


On Sun, Sep 6, 2015 at 11:11 PM, Divya Vyas <edivya.vyas@gmail.com> wrote:

> Hi,
>
> Hi,
>
> I am getting this error while booting the selinux enabled image
> (core-image-selinux)
>
>
> * SELinux requires the root '/' filesystem support extended
>   filesystem attributes (XATTRs).  It does not appear that this
>   filesystem has extended attribute support or it is not enabled.
>
>   - To continue using SELinux you will need to enable extended
>     attribute support on the root device.
>
>   - To disable SELinux, please add "selinux=0" in the kernel
>     command line.
>
> * Halting the system now.
>
> My fstab is below :
>
> rootfs                  /               ext3
> defaults,acl,user_xattr 0 1
>
>
> Here is the kernel  configuration :
>
> KERNEL_CONFIG_AUDIT="y"
> KERNEL_CONFIG_NETWORK_SECMARK=
> "y"
> KERNEL_CONFIG_EXT2_FS_SECURITY="y"
> KERNEL_CONFIG_EXT3_FS_SECURITY="y"
> KERNEL_CONFIG_EXT4_FS_SECURITY="y"
> KERNEL_CONFIG_EXT2_FS_ATTR="y"
> KERNEL_CONFIG_EXT3_FS_ATTR="y"
> KERNEL_CONFIG_JFS_SECURITY="y"
> KERNEL_CONFIG_REISERFS_FS_SECURITY="y"
> KERNEL_CONFIG_JFFS2_FS_SECURITY="y"
> KERNEL_CONFIG_SECURITY_NETWORK="y"
> KERNEL_CONFIG_SECURITY_SELINUX="y"
> KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM="y"
> KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE="1"
> KERNEL_CONFIG_SECURITY_SELINUX_DISABLE="y"
> KERNEL_CONFIG_SECURITY_SELINUX_DEVELOP="y"
> KERNEL_CONFIG_SECURITY_SELINUX_AVC_STATS="y"
> KERNEL_CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE="1"
> KERNEL_CONFIG_SECURITY="y"
> KERNEL_CONFIG_SECURITYFS="y"
> KERNEL_CONFIG_AUDIT_GENERIC="y"
> KERNEL_CONFIG_DEFAULT_SECURITY_SELINUX="y"
> KERNEL_CONFIG_SECURITY_PATH="y"
>
> My filesystem is ext3 . I think all configs are enabled.
>
>
> Any idea where is the problem?
>
> Thanks,
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1134c792dc6917051f3601cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Divya,<br><br></div>May be you can go through this=
 script and find out what is wrong:<br><div class=3D"">
      <span class=3D""><span itemscope=3D"" itemtype=3D"http://data-vocabul=
ary.org/Breadcrumb"><span itemprop=3D"title">meta-selinux</span></span></sp=
an><span class=3D"">/</span><span itemscope=3D"" itemtype=3D"http://data-vo=
cabulary.org/Breadcrumb"><span itemprop=3D"title">recipes-security</span></=
span><span class=3D"">/</span><span itemscope=3D"" itemtype=3D"http://data-=
vocabulary.org/Breadcrumb"><span itemprop=3D"title">selinux</span></span><s=
pan class=3D"">/</span><span itemscope=3D"" itemtype=3D"http://data-vocabul=
ary.org/Breadcrumb"><span itemprop=3D"title">selinux-config</span></span><s=
pan class=3D"">/</span><strong class=3D"">selinux-init.sh<br><br></strong><=
/div><div class=3D""><span class=3D"">//Gaurang Shastri<br></span>
    </div>
  <br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Su=
n, Sep 6, 2015 at 11:11 PM, Divya Vyas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:edivya.vyas@gmail.com" target=3D"_blank">edivya.vyas@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<br><br=
><div>Hi,<br><br></div><div>I am getting this error while booting the selin=
ux enabled image (core-image-selinux) <br><br><br>* SELinux requires the ro=
ot &#39;/&#39; filesystem support extended<br>=C2=A0 filesystem attributes =
(XATTRs).=C2=A0 It does not appear that this<br>=C2=A0 filesystem has exten=
ded attribute support or it is not enabled.<br><br>=C2=A0 - To continue usi=
ng SELinux you will need to enable extended<br>=C2=A0=C2=A0=C2=A0 attribute=
 support on the root device.<br><br>=C2=A0 - To disable SELinux, please add=
 &quot;selinux=3D0&quot; in the kernel<br>=C2=A0=C2=A0=C2=A0 command line.<=
br><br>* Halting the system now.<br><br></div><div>My fstab is below :<br><=
/div><br>rootfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ext3=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaults,acl,user_xattr=
 0 1 <br><br><br>Here is the kernel=C2=A0 configuration :<br><br>KERNEL_CON=
FIG_AUDIT=3D&quot;y&quot;<br>KERNEL_CONFIG_NETWORK_SECMARK=3D<div>&quot;y&q=
uot;<br>KERNEL_CONFIG_EXT2_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT=
3_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT4_FS_SECURITY=3D&quot;y&q=
uot;<br>KERNEL_CONFIG_EXT2_FS_ATTR=3D&quot;y&quot;<br>KERNEL_CONFIG_EXT3_FS=
_ATTR=3D&quot;y&quot;<br>KERNEL_CONFIG_JFS_SECURITY=3D&quot;y&quot;<br>KERN=
EL_CONFIG_REISERFS_FS_SECURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_JFFS2_FS_SE=
CURITY=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_NETWORK=3D&quot;y&quot;<br=
>KERNEL_CONFIG_SECURITY_SELINUX=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_S=
ELINUX_BOOTPARAM=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_BOOTPARA=
M_VALUE=3D&quot;1&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_DISABLE=3D&quot;y=
&quot;<br>KERNEL_CONFIG_SECURITY_SELINUX_DEVELOP=3D&quot;y&quot;<br>KERNEL_=
CONFIG_SECURITY_SELINUX_AVC_STATS=3D&quot;y&quot;<br>KERNEL_CONFIG_SECURITY=
_SELINUX_CHECKREQPROT_VALUE=3D&quot;1&quot;<br>KERNEL_CONFIG_SECURITY=3D&qu=
ot;y&quot;<br>KERNEL_CONFIG_SECURITYFS=3D&quot;y&quot;<br>KERNEL_CONFIG_AUD=
IT_GENERIC=3D&quot;y&quot;<br>KERNEL_CONFIG_DEFAULT_SECURITY_SELINUX=3D&quo=
t;y&quot;<br>KERNEL_CONFIG_SECURITY_PATH=3D&quot;y&quot;<br><br></div>My fi=
lesystem is ext3 . I think all configs are enabled. <br><br><br><div>Any id=
ea where is the problem?<br><br></div>Thanks,<br></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1134c792dc6917051f3601cf--
