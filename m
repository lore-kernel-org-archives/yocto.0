Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D2EE00BBF
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 01:37:45 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id m1so3855188oag.5
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 01:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=UNzdKIEAEo7/+EkK7AaFvFgcqAeQ43BH7YLCsa7hw68=;
	b=NkULb4rOsUlsTnXIcBsttMwKO3/LnfXWpHH2tf2Tpx2zD67aYG8aEmE1LLuNHoYPxO
	D0ZHaoWusGM21XGePWJYiHBR0gBs9hswTbBEnDUvbY2fsUUEUytQ78jX4WNUu7JK9AXL
	P5fpfjYGa2fDemMizIBRzzgR/ChlQDrpvIpMtzuVWMuJ1z2I42/xAG1+1IC1V/S9VV1j
	mnmVU2qN+XT7f0dSPK3VO0351rCjMoVkwC8qgUOUUjQHXTs5aEJWaWnBtSvk7G8Y5kHt
	WNva9w/Ap/sTCQDi8r/V6l+d8Z79l9hVMq6SD8JJLOBj/g9ELIJokNNNc4ES5W0YSz3W
	r28Q==
X-Gm-Message-State: ALoCoQkh4ZlPubO4dMNDWbJVLVhaRpkR3zs+W0SGAccKH24WsJViiyPp5Q9ffMts0DVZBFd35The
MIME-Version: 1.0
X-Received: by 10.60.133.17 with SMTP id oy17mr1958883oeb.51.1398415064734;
	Fri, 25 Apr 2014 01:37:44 -0700 (PDT)
Received: by 10.76.12.197 with HTTP; Fri, 25 Apr 2014 01:37:44 -0700 (PDT)
In-Reply-To: <CA+AhUGxYrkBtzpK97y6YFLuYmn_THpRMR+Pkedp3Gx5h1h7f=w@mail.gmail.com>
References: <CAOJo16W3sQ2MqvYFCDrNB_vPv_bow7vKysXL69ZutuwevxkWYA@mail.gmail.com>
	<CA+AhUGxYrkBtzpK97y6YFLuYmn_THpRMR+Pkedp3Gx5h1h7f=w@mail.gmail.com>
Date: Fri, 25 Apr 2014 10:37:44 +0200
Message-ID: <CA+AhUGyAr2whfEPqjLTZx+k_3oOZuzqjp1fYpA=J5U5jgkfPRg@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Mahyar Yaghmaee <mahyar@boundarydevices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ROOTFS_POSTPROCESS_COMMAND warning
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
X-List-Received-Date: Fri, 25 Apr 2014 08:37:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ok, I got it working now.

Just create a function that does what you want, e.g.:
function fix_my_rootfs() {
    echo "foo"
}

Then run this function from ROOTFS_POSTPROCESS_COMMAND, e.g.
ROOTFS_POSTPROCESS_COMMAND +=3D "fix_my_rootfs; "

That works for me. When I first tried it I accidentally added () when
calling the function from ROOTFS_POSTPROCESS_COMMAND which does not
work.

Cheers,
Erik

On Fri, Apr 25, 2014 at 8:56 AM, Erik Bot=F6 <erik.boto@pelagicore.com> wro=
te:
> Hi,
>
> On Fri, Apr 18, 2014 at 1:48 AM, Mahyar Yaghmaee
> <mahyar@boundarydevices.com> wrote:
>> Hi,
>>
>> I'm trying to run a post processing shell command using
>> ROOTFS_POSTPROCESS_COMMAND by adding ROOTFS_POSTPROCESS_COMMAND +=3D
>> "shell_command;" at the end of an image recipe.
>> I get:
>> WARNING: Function shell_command doesn't exist
>>
>> Any ideas what's the problem here?
>
> Nope, but I do see the same issue since a while back. I'm also curious
> on how to solve this. I tried moving the commands into a separate
> function in the image recipe and to call that from
> ROOTFS_POSTPROCESS_COMMAND but still see the issues.
>
> Cheers,
> Erik
>
>>
>> Regards,
>> Mahyar
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

