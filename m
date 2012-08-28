Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BCEBE0141D
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 05:40:41 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1T6L5v-00011O-HH; Tue, 28 Aug 2012 13:40:35 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LboBhu+NM6WTTsV+vmj73OoUtcf_-z07EKZMNMRhQ1F4w@mail.gmail.com>
Date: Tue, 28 Aug 2012 13:40:32 +0100
Message-Id: <EF6C4AA8-5B3B-47BE-9696-C258424993E4@keylevel.com>
References: <E5621C20-71E4-4AB7-BBAD-EE5CD0B9483E@keylevel.com>
	<CAJTo0LboBhu+NM6WTTsV+vmj73OoUtcf_-z07EKZMNMRhQ1F4w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Xorg keyboard not working
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
X-List-Received-Date: Tue, 28 Aug 2012 12:40:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 28 Aug 2012, at 11:07, Burton, Ross wrote:

> On 27 August 2012 21:41, Chris Tapp <opensource@keylevel.com> wrote:
>> I've got a system that has a working console and four virtual =
terminals.
>>=20
>> I can start X and run an application using
>>=20
>> /usr/bin/xinit /usr/sbin/xinitrc -- /usr/bin/Xorg
>>=20
>> The application runs fine and is expected to run with no user =
interaction. Keyboard input is sometimes needed to either kill the =
application or switch to another virtual terminal to make some =
configuration changes.
>>=20
>> However, I can't seem to get the keyboard to work - I can't switch =
virtual terminal or force the application to exit and the caps-lock =
light doesn't toggle. This is the same keyboard that was used to kick =
the application off. xf86-input-keyboard and xf86-input-evdev are both =
listed in 'XSERVER' when the system is baked.
>>=20
>> Where should I be looking to work out why the keyboard isn't working?
>=20
> Does the keyboard work from a VT before X starts?  What user does X
> run as -- my hunch is that it doesn't have permission to access the
> input devices.  Check the Xorg log to see if there are any relevant
> errors.

Yes, the keyboard works fine from the VTs. X is running as root and I =
can't see anything in the logs that are of any help!

Chris Tapp

opensource@keylevel.com
www.keylevel.com




