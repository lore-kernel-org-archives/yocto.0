Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC5AE01583
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 14:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=yL0HeHMemvZr8/KE1kHxxuvHwHaJS2wJYTWtut3/ZZM=; 
	b=ZkkamASS78CrEJUiVpyVatCtTsMlXyzy3HrCmjO6oW9ZkwHyoyNT0DQV2Hpy3dRbQP8eH9nu+4AKnsWn2MfobtFC3xTiMZ9CZTb34EnaWaWcTIwewQAg//hzt5P2GhRakF64l8QZ+8vm/L8nHaQAmxDzSp4UOrY1KN2FZgSUutQ=;
Received: from [109.224.129.17] (port=23409
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1V4e45-0038rh-KD; Wed, 31 Jul 2013 22:36:13 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CA+gsK-oGhS4HXd2c3v=MAyouk=rwPPL+zKtZnJxAAojDB9YomA@mail.gmail.com>
Date: Wed, 31 Jul 2013 22:36:12 +0100
Message-Id: <E6985885-E5DC-45B9-88FC-151A70F1DE5D@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<CA+gsK-oGhS4HXd2c3v=MAyouk=rwPPL+zKtZnJxAAojDB9YomA@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Network booting
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
X-List-Received-Date: Wed, 31 Jul 2013 21:36:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_036BE03B-CCAF-49C2-8EFE-0B177FF79522"

--Apple-Mail=_036BE03B-CCAF-49C2-8EFE-0B177FF79522
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Rudolf,

On 31 Jul 2013, at 22:29, Rudolf Streif wrote:

>=20
> Is there an easy way to have a system boot and load the rootfs from a =
network server?
>=20
> The classic way is to serve the root file system from an NFS server. =
You will have to pass the root=3D/dev/nfs and =
nfsroot=3D[<server-ip>:]<root-dir>[,<nfs-options>] to your kernel via =
boot loader.
>=20
> Every system you want to boot this way will need to have its own root =
file system on the NFS server. However, there is the nfsroot project [1] =
that reportedly allows booting entire clusters sharing one root file =
system. I have not used that though.

Ah. I forgot to mention that it has to boot from a Windows server and =
NFS will not be available. Sorry about that.

>=20
>=20
> =20
> I'm using an x86 system and can have the kernel and an initrd on it. I =
would use bootp, but a lot of end users either don't have this or will =
not allow it to be used. I think it needs to go something like:
>=20
> 1) Kernel loads the initrd and bring the network up (static or DHCP);
> 2) The rootfs image can then be download;
> 3) Some magic then makes this run...
>=20
> This looks like you want to start up the system, download a root file =
system tarball, extract it to somewhere and then use that as the root =
file system by chroot'ing to it.
> =20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_036BE03B-CCAF-49C2-8EFE-0B177FF79522
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>Hi Rudolf,</div><div><br></div><div>On 31 Jul 2013, at 22:29, Rudolf Streif wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr"><div><div class="gmail_extra"><br><div class="gmail_quote"><blockquote class="gmail_quote" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">
Is there an easy way to have a system boot and load the rootfs from a network server?<br>
<br></blockquote><div>The classic way is to serve the root file system from an NFS server. You will have to pass the root=/dev/nfs and&nbsp;<span style="color:rgb(0,0,0);white-space:pre-wrap">nfsroot=[&lt;server-ip&gt;:]&lt;root-dir&gt;[,&lt;nfs-options&gt;] to your kernel via boot loader.</span><div>
<font color="#000000"><span style="white-space:pre-wrap"><br></span></font></div><div><font color="#000000"><span style="white-space:pre-wrap">Every system you want to boot this way will need to have its own root file system on the NFS server. However, there is the nfsroot project [1] that reportedly allows booting entire clusters sharing one root file system. I have not used that though.<br></span></font></div></div></div></div></div></div></blockquote><div><br></div><div>Ah. I forgot to mention that it has to boot from a Windows server and NFS will not be available. Sorry about that.</div><br><blockquote type="cite"><div dir="ltr"><div><div class="gmail_extra"><div class="gmail_quote"><div><div><font color="#000000"><span style="white-space:pre-wrap">
</span></font><div class="gmail_extra"><br></div></div></div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">

I'm using an x86 system and can have the kernel and an initrd on it. I would use bootp, but a lot of end users either don't have this or will not allow it to be used. I think it needs to go something like:<br>
<br>
1) Kernel loads the initrd and bring the network up (static or DHCP);<br>
2) The rootfs image can then be download;<br>
3) Some magic then makes this run...<br>
<br></blockquote><div>This looks like you want to start up the system, download a root file system tarball, extract it to somewhere and then use that as the root file system by chroot'ing to it.</div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear="all"><div><br></div><div><font face="garamond, serif"><span style="border-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></span></font></div>
</div></div></div>
</blockquote></div><br><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_036BE03B-CCAF-49C2-8EFE-0B177FF79522--
