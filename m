Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web10.6821.1619702691929575885
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 06:24:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@cybernetics.com header.s=mail header.b=MMqy1dWO;
 spf=pass (domain: cybernetics.com, ip: 173.71.130.66, mailfrom: btv1==7537c857054==tonyb@cybernetics.com)
X-ASG-Debug-ID: 1619702688-0fb3b0366be3420001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id lYCT7DHQnqfOCea6; Thu, 29 Apr 2021 09:24:48 -0400 (EDT)
X-Barracuda-Envelope-From: tonyb@cybernetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.4.126
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cybernetics.com; s=mail;
	bh=4B764HEx9dmAp4uVR/97n5oUpPCLL+nlhUt2Mau94ac=;
	h=Content-Language:Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject; b=MMqy1dWO7aghV40EEQ
	cShqHdo3xlk9ZJiane6AbWXMj+BY4EiAMbSFR+jhDS8cBL3/h61uG6bVsrHhuLluZn2Uo7abPbAp9
	EvuHK8/rspuIhV8BzoDA9BFgk1CWyGgA1/5FlI1CoRMDqi7A3IhVmOZWX3Cc9QheY/XDKs8w+TnU=
Received: from [10.157.2.224] (HELO [192.168.200.1])
  by cybernetics.com (CommuniGate Pro SMTP 6.2.14)
  with ESMTPS id 10820881; Thu, 29 Apr 2021 09:24:48 -0400
Subject: Re: [yocto] Hardknott: grub immediately reboots
X-Barracuda-RBL-Trusted-Forwarder: 10.157.2.224
To: "Mittal, Anuj" <anuj.mittal@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
X-ASG-Orig-Subj: Re: [yocto] Hardknott: grub immediately reboots
References: <dc59708d-c7b0-8e8c-99d2-079a1b51fb96@cybernetics.com>
 <93a23c9788814396ad254155c102f203@intel.com>
From: "Tony Battersby" <tonyb@cybernetics.com>
Message-ID: <56463ae6-69a1-8d3b-804c-7e8e4cbd6488@cybernetics.com>
Date: Thu, 29 Apr 2021 09:24:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <93a23c9788814396ad254155c102f203@intel.com>
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1619702688
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 1251
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 4/28/21 11:25 PM, Mittal, Anuj wrote:
>
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On B=
ehalf Of
>> Tony Battersby
>> Sent: Tuesday, April 27, 2021 03:07 AM
>> To: yocto@lists.yoctoproject.org
>> Subject: [yocto] Hardknott: grub immediately reboots
>>
>> After upgrading from Dunfell (YP 3.1) to Hardknott (YP 3.3), our firmw=
are was
>> unable to boot.=C2=A0 Our target hardware is x86-64 booting in legacy =
BIOS mode using
>> grub on a variety of motherboards and CPUs.=C2=A0 The grub menu would =
never show up;
>> instead it would reboot immediately, leading to an endless reboot loop=
.
>>
>> I have two different workarounds.=C2=A0 Create a bbappend file for gru=
b, and do one of the
>> following two things:
>>
>> 1) Add the following line:
>>
>> CFLAGS_remove =3D "-O2"
> I think we should probably remove this. That's what Fedora also seems t=
o be doing so Os is used.
>
> https://src.fedoraproject.org/rpms/grub2/blob/rawhide/f/grub.macros#_19
>
> and what grub configure expects:
>
> https://git.savannah.gnu.org/cgit/grub.git/tree/configure.ac#n41
>
> Thanks,
>
> Anuj

I have opened a Yocto bug here:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14367

Tony

