Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2647E00B58; Thu, 23 May 2019 19:11:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20B65E008E3
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 19:11:07 -0700 (PDT)
Received: by mail-pl1-f179.google.com with SMTP id g21so3520639plq.0
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 19:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=edg0hdsmbCiQ5fRWjTxizuhF1h5bh4VcuZ6/3wPF6V8=;
	b=JgeBv80YuhVsPtVnQveVasu3qwzn3v2jbFdFR1hXeymhWDh/5xT4P4zi/00mN1Ko1N
	83ANxHxaj2NKP1qtDbFkJUpq+ABvQJawubvUlOpLRnLwmz1sYnX9CAUAtxYShvtcAv30
	XmZb85Dd6dEU3m2XdeT2oh8xmDR+jykooNdinxP1v/1Mb8ZejTmeJGras7QFBL4Q32Ct
	8zyDApGuxs70n7VcssOreeGooenfnd+YP/agmQGkm0Rgp5oW2ckjrPRP3FqnmUn9t2iR
	Vf9ZiIyGBJ8xiBpjwgXnjvtKb7wysT7GrY2WsS70X2Gno+LfgUFaFI0nW7ePqCh8GSlm
	eezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=edg0hdsmbCiQ5fRWjTxizuhF1h5bh4VcuZ6/3wPF6V8=;
	b=jsKeAllHt4JFIPo3Cwz2YwRGrKFlaV4dbv2pgs4vj1m/LDs+2p7QFj4Ef9vUEs+sV2
	1HsbKW80rxJ8ubwLl8Nh/P2SLzxr6uoAZ4vHPNzPWcJzanM50JvznqRFY5/qXc6uBj9z
	tLBnYcFHpMJttYw05DV5anq63RoAg36Q+GLZ9KaAMvrKMnIEvnw9L3jQEPnXcMv8K3Hx
	vg350A7MoM4wt++AAPcCg7lZ2MIagGOLFSQcAa5S7XVbBu/4qh7udFNt6iTtFpxeX3Uk
	GjR+JUmnC00YjbRqE6na/NwErAaTT6QpvS0r9pU/PWqFqWlgQI2TCvn1x5ASd9QI3/jS
	8ugw==
X-Gm-Message-State: APjAAAWWCuOBsEcgvAZiqnLF2LJmijrdNsM3n7m2SmlfsBukdAKhSCAC
	jhEcocL2TC4JzKW5EGlJqYJXTBwRw/4=
X-Google-Smtp-Source: APXvYqzd1P0JOcynwBQlXeUdDNDNGAOrlwzIrT47kkye4IzRYoE1Lhf3AKqv3jOU8WlvdVI69CpgkQ==
X-Received: by 2002:a17:902:e00a:: with SMTP id
	ca10mr105162223plb.18.1558663866779; 
	Thu, 23 May 2019 19:11:06 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:41da:1c8d:2ccb:5914])
	by smtp.gmail.com with ESMTPSA id m12sm591953pgi.56.2019.05.23.19.11.05
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 19:11:06 -0700 (PDT)
To: Rudolf Streif <rudolf.streif@ibeeto.com>,
	Greg Wilson-Lindberg <GWilson@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
	<20cf7cd05ce54a439d05109439572db8@sakuraus.com>
	<2503a68b-2283-cac8-1e5d-11d0885598a7@ibeeto.com>
	<1d6f238b62354df8a92873769755990b@sakuraus.com>
	<fd8f34de-c8e6-c503-a932-9bdf2efdbaed@ibeeto.com>
	<b38f6ac29beb40c4bb457c09a14cc78d@sakuraus.com>
	<CAPxNcnd9pBO73KqRqtMK-wVaTtAC-hux1UezX-zxxOqRmxukyg@mail.gmail.com>
	<f54b1f155a664191acbf6b31b8c96ab6@sakuraus.com>
	<CAPxNcndS3o5uvfgKAv6YcdodyGCa6AqKxNxo5=uCz=5XpbWcvg@mail.gmail.com>
	<53a4b80ae8984dbfb5c74e7e543d7a7a@sakuraus.com>
	<CAPxNcndT+PvwQaKxPkfoqWTUsGwqYZ+DeOEcLoUQbkBtyqJF-w@mail.gmail.com>
	<595b0462ab83447ba6c637d71f534bcb@sakuraus.com>
	<CAPxNcncwb+53vGh6FYuf1=m7OB6RNqds4OoUenED9LtQfnP5WA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <59151d64-8905-d1ac-0d34-64c61604d7cb@gmail.com>
Date: Thu, 23 May 2019 19:11:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAPxNcncwb+53vGh6FYuf1=m7OB6RNqds4OoUenED9LtQfnP5WA@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: problem adding a user
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
X-List-Received-Date: Fri, 24 May 2019 02:11:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 1:40 PM, Rudolf Streif wrote:
> Greg,
> 
> It eluded me earlier but in both instances the variable containing the 
> password does not seem to be expanded.
> 
> First version without the single quotes:
> 
> SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
> 
> EXTRA_USERS_PARAMS = "\
>      usermod -p ${SAKURA_PASS} ${SAKURA_USER}; \
>      usermod -a -G sudo,dialout ${SAKURA_USER}; \
>      "
> results in:
> 
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]
> 
> and with the quotes:
> 
> SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
> 
> EXTRA_USERS_PARAMS = "\
>      usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
>      usermod -a -G sudo,dialout ${SAKURA_USER}; \
>      "
> results in:
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p '' sakura]
> 
> It looks as if the variable SAKURA_PASS is not set at all. I looked at 
> your scribe.bb <http://scribe.bb> recipe you attached earlier but I 
> could not find any reason why the variable is not set. Is there a chance 
> that it is overridden somewhere elase?
> 


This is correct with one small nit that we need to escape some 
characters which has special meaning for shell. e.g. $

e.g. in local.conf something like below

INHERIT += "extrausers"

EXTRA_USERS_PARAMS += "\
     useradd sakura; \
     usermod -p '\$1\$QVO3K6Ii\$fvkoDKnlzz3d5uVoL7KcM0' sakura; \
"

might work as you expect.

> :rjs
> 
> 
> On Wed, May 22, 2019 at 1:28 PM Greg Wilson-Lindberg 
> <GWilson@sakuraus.com <mailto:GWilson@sakuraus.com>> wrote:
> 
>     Rudolf,
> 
>     Here is the first half of the file,  the whole file is over the 500k
>     limit of free pastebin:
> 
>     https://pastebin.com/UcnKebce
> 
> 
>     And here is the 2nd half of the file:
> 
>     https://pastebin.com/9117tdUU
> 
> 
>     Greg
> 
>     ------------------------------------------------------------------------
>     *From:* Rudolf Streif <rudolf.streif@ibeeto.com
>     <mailto:rudolf.streif@ibeeto.com>>
>     *Sent:* Wednesday, May 22, 2019 12:42:40 PM
>     *To:* Greg Wilson-Lindberg
>     *Cc:* Yocto list discussion
>     *Subject:* Re: [yocto] problem adding a user
>     Greg,
>     Can you share the logfile via Pastebin?
>     :rjs
> 
>     On Tue, May 21, 2019 at 11:09 AM Greg Wilson-Lindberg
>     <GWilson@sakuraus.com <mailto:GWilson@sakuraus.com>> wrote:
> 
>         Rudolf,
> 
>         Something else is happening to me. I changed to this in the
>         image recipe:
> 
>         SAKURA_USER = "sakura"
> 
>         SAKURA_PASSWD = "Distracted"
>         SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
> 
>         EXTRA_USERS_PARAMS = "\
>              usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
>              usermod -a -G sudo,dialout ${SAKURA_USER}; \
>              "
> 
>         deleting all of the commented out lines, and I get this in the
>         log file:
> 
> 
>         ..../scribe/1.0-r0/rootfs -p '' sakura]
> 
> 
>         nothing between the single quotes. It's acting like SAKURA_PASS
>         is not defined.
> 
>         This is only happening when I'm trying the MD5 password.
> 
> 
>         Greg
> 
>         ------------------------------------------------------------------------
>         *From:* Rudolf Streif <rudolf.streif@ibeeto.com
>         <mailto:rudolf.streif@ibeeto.com>>
>         *Sent:* Tuesday, May 21, 2019 5:37:23 AM
>         *To:* Greg Wilson-Lindberg
>         *Cc:* Yocto list discussion
>         *Subject:* Re: [yocto] problem adding a user
>         Greg,
> 
>         usermod does not work for the MD5 algorithm with the explicit
>         password hash as it contains the $ field delimiters which are
>         interpreted by the shell executing the usermod command. Use
>         single quotes around the password hash:
> 
>         usermod -p '${SAKURA_PASS}' ${SAKURA_USER};
> 
>         :rjs
> 
>         On Mon, May 20, 2019, 11:55 Greg Wilson-Lindberg
>         <GWilson@sakuraus.com <mailto:GWilson@sakuraus.com>> wrote:
> 
>             Hi Rudolf,
> 
>             I've had more time to work with this and I'm still having problems getting
>             everything to work properly. I've attached the image recipe recipe that I'm
>             using so I don't leave any thing out that may be relevant.
> 
>             When I build with a password that is no more more than 8 characters long
>             and no non-alphabetic characters:
> 
>             SAKURA_PASSWD = "Distract"
>             SAKURA_PASS = "WRsDFfg1BsrDM"
> 
>             everything works correctly.
> 
>             I first tried that using the `openssl ...` form, and then I tried the
>             -1, MD5 BSD form and had problems, so I changed to doing the openssl
>             on the command line and making sure that I don't have any characters
>             that display as '.' or '/'. Again, if I don't do more than 8 characters
>             and no special characters everything works.
> 
>             When I changed to using 'Ds$tr@ct' it stopped working. The build finishes
>             and the log file shows the usermod being exectued correctly:
> 
>             NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
>             NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -a -G sudo,dialout sakura]
> 
>             But when I try to sign in it doesn't work.
> 
>             I then tried the 10 character password 'Distracted', the build fails:
> 
>             NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]
>             Usage: usermod [options] LOGIN
> 
>             Options:
>                -c, --comment COMMENT         new value of the GECOS field
>                -d, --home HOME_DIR           new home directory for the user account
>                -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
>                -f, --inactive INACTIVE       set password inactive after expiration
>                                              to INACTIVE
>                -g, --gid GROUP               force use GROUP as new primary group
>                -G, --groups GROUPS           new list of supplementary GROUPS
>                -a, --append                  append the user to the supplemental GROUPS
>                                              mentioned by the -G option without removing
>                                              him/her from other groups
>                -h, --help                    display this help message and exit
>                -l, --login NEW_LOGIN         new value of the login name
>                -L, --lock                    lock the user account
>                -m, --move-home               move contents of the home directory to the
>                                              new location (use only with -d)
>                -o, --non-unique              allow using duplicate (non-unique) UID
>                -p, --password PASSWORD       use encrypted password for the new password
>                -P, --clear-password PASSWORD use clear password for the new password
>                -R, --root CHROOT_DIR         directory to chroot into
>                -s, --shell SHELL             new login shell for the user account
>                -u, --uid UID                 new UID for the user account
>                -U, --unlock                  unlock the user account
>                -v, --add-subuids FIRST-LAST  add range of subordinate uids
>                -V, --del-subuids FIRST-LAST  remove range of subordinate uids
>                -w, --add-subgids FIRST-LAST  add range of subordinate gids
>                -W, --del-subgids FIRST-LAST  remove range of subordinate gids
> 
>             ERROR: scribe: usermod command did not succeed.
> 
>             So, even though I'm putting in the openssl output:
>             openssl passwd -1 "Distracted"
>             $1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0
> 
>             that I get back from what should be a valid run of openssl, I don't see anything
>             from the password on the usermod command line:
>               "...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]"
> 
>             I don't understand why the short passwords and passing along the proper hash works,
>             but not the longer password.
> 
>             It also doesn't make sense that I can't put in the '$' & '@' characters and
>             have them work.
> 
>             Any suggestions would be greatly appreciated.
> 
>             Greg
> 
>             ------------------------------------------------------------------------
>             *From:* Rudolf Streif <rudolf.streif@ibeeto.com
>             <mailto:rudolf.streif@ibeeto.com>>
>             *Sent:* Wednesday, May 15, 2019 4:58:26 PM
>             *To:* Greg Wilson-Lindberg
>             *Cc:* Yocto list discussion
>             *Subject:* Re: [yocto] problem adding a user
>             Glad to hear that it works now. I am planning on attending
>             the YP DevDay.
> 
>             :rjs
> 
>             On Wed, May 15, 2019, 13:53 Greg Wilson-Lindberg
>             <GWilson@sakuraus.com <mailto:GWilson@sakuraus.com>> wrote:
> 
>                 Thank you very much, that got me back on the right path.____
> 
>                 Maybe I'll see you at the Yocto day at the Embedded
>                 Linux Conference.____
> 
>                 Regards,____
> 
>                 cid:image001.png@01D35D7D.179A7510____
> 
>                 *Greg Wilson-Lindberg ____*
> 
>                 *Principal Firmware Engineer | Sakura Finetek USA, Inc.
>                 ____*
> 
>                 *____*
> 
>                 1750 W 214^th Street | Torrance, CA 90501 | U.S.A. ____
> 
>                 T: +1 310 783 5075 ____
> 
>                 F: +1 310 618 6902 | E: gwilson@sakuraus.com
>                 <mailto:gwilson@sakuraus.com>____
> 
>                 www.sakuraus.com <http://www.sakuraus.com>____
> 
>                 ____
> 
>                 cid:image002.png@01D35D7D.179A7510____
> 
>                 	
> 
>                 cid:image003.png@01D35D7D.179A7510____
> 
>                 ------------------------------------------------------------------------
> 
>                 Confidentiality Notice: This e-mail transmission may
>                 contain confidential or legally privileged information
>                 that is intended only for the individual or entity named
>                 in the e-mail address. If you are not the intended
>                 recipient, you are hereby notified that any disclosure,
>                 copying, distribution, or reliance upon the contents of
>                 this e-mail is strictly prohibited. If you have received
>                 this e-mail transmission in error, please reply to the
>                 sender, so that Sakura Finetek USA, Inc. can arrange for
>                 proper delivery, and then please delete the message from
>                 your inbox. Thank you.____
> 
>                 __ __
> 
>                 __ __
> 
>                 *From:*Rudolf J Streif [mailto:rudolf.streif@ibeeto.com
>                 <mailto:rudolf.streif@ibeeto.com>]
>                 *Sent:* Wednesday, May 15, 2019 01:30 PM
>                 *To:* Greg Wilson-Lindberg <GWilson@sakuraus.com
>                 <mailto:GWilson@sakuraus.com>>; Yocto list discussion
>                 <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>                 *Subject:* Re: [yocto] problem adding a user____
> 
>                 __ __
> 
>                 Instead of____
> 
>                 __ __
> 
>                 useradd -p `openssl passwd test` sakura____
> 
>                 __ __
> 
>                 which attempts to add the user and set the password
>                 which fails if the user already exists, use____
> 
>                 __ __
> 
>                 usermod -p `openssl passwd test` sakura____
> 
>                 __ __
> 
>                 which sets the user's password.____
> 
>                 __ __
> 
>                 :rjs____
> 
>                 __ __
> 
>                 On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:____
> 
>                     Ok, I had been using the useradd class in a couple
>                     of other recipes to allow me to copy files to the
>                     sakura user directory and another location, but
>                     owned by sakura. That seems to have been what was
>                     causing the problem.____
> 
>                     __ __
> 
>                     I had been using the extrausers class in my
>                     top level image recipe.____
> 
> 
>                     So now how do I get all of this to work together? Do
>                     I need to put everything that touches the sakura
>                     user in the same recipe? It seems that I need to use
>                     only one of the useradd or extrausers classes?____
> 
>                     __ __
> 
>                     Greg____
> 
>                     ------------------------------------------------------------------------
> 
>                     *From:*Rudolf J Streif <rudolf.streif@ibeeto.com>
>                     <mailto:rudolf.streif@ibeeto.com>
>                     *Sent:* Wednesday, May 15, 2019 12:31 PM
>                     *To:* Greg Wilson-Lindberg; Yocto list discussion
>                     *Subject:* Re: [yocto] problem adding a user____
> 
>                     ____
> 
>                     The ! for the password in /etc/shadow indicates that
>                     the account is disabled:____
> 
>                     sakura:!:18031:0:99999:7:::____
> 
>                     __ __
> 
>                     Either there is something wrong with the password
>                     generation or it gets disabled by something else.
>                     Maybe it's worth trying with a plain image without
>                     Boot2Qt or anything else.____
> 
>                     __ __
> 
>                     :rjs____
> 
>                     __ __
> 
>                     __ __
> 
>                     On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:____
> 
>                         Hi Rudolf,____
> 
>                         1st, yes I inherit extrausers. Attached are the
>                         passwd & shadow files.____
> 
>                         __ __
> 
>                         It shouldn't make any difference, but I'm
>                         building this for an RPi3 using the Qt Boot2Qt
>                         version of the Yocto environment, distro 2.5.3.____
> 
>                         __ __
> 
>                         Greg____
> 
>                         ------------------------------------------------------------------------
> 
>                         *From:*Rudolf J Streif
>                         <rudolf.streif@ibeeto.com>
>                         <mailto:rudolf.streif@ibeeto.com>
>                         *Sent:* Wednesday, May 15, 2019 11:26 AM
>                         *To:* Greg Wilson-Lindberg; Yocto list discussion
>                         *Subject:* Re: [yocto] problem adding a user____
> 
>                         ____
> 
>                         Hi Greg,____
> 
>                         __ __
> 
>                         > I've also tried both the back-quote and the single-quote, no difference.____
> 
>                         __ __
> 
>                         Help me to understand this. the back-quotes are
>                         the right ones. If you use the single ones your
>                         password in the /etc/shadow ends up being
>                         'openssl passwd test' (without the quotes),
>                         unless the build fails because of a parsing
>                         error (I have not tried it). Silly question, you
>                         did inherit extrausers class?____
> 
>                         __ __
> 
>                         Can you post your /etc/passwd and /etc/shadow____
> 
>                         __ __
> 
>                         I am surprised that this does not work with your
>                         setup. I have been doing this a gazillion times
>                         always with success.____
> 
>                         __ __
> 
>                         :rjs____
> 
>                         __ __
> 
>                         __ __
> 
>                         __ __
> 
>                         On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:____
> 
>                             Hi Rudolf,____
> 
>                             Thanks for the reply, and the information on
>                             how openssl works.____
> 
>                             __ __
> 
>                             I'm trying to create a user with the same
>                             group name so the code that I'm using
>                             reduces to:____
> 
>                             EXTRA_USERS_PARAMS = "\____
> 
>                                  useradd -p `openssl passwd test` sakura; \____
> 
>                                  usermod -a -G sudo ${SAKURA_USER}; \____
> 
>                                  "____
> 
>                             I also, as you can see, removed the macros
>                             to eliminate as much confusion as possible. ____
> 
>                             __ __
> 
>                             I still can't login in using
>                             the password 'test'.____
> 
>                             __ __
> 
>                             I've also tried both the back-quote and the
>                             single-quote, no difference.____
> 
>                             Regards,____
> 
>                             __ __
> 
>                             Greg____
> 
>                             ------------------------------------------------------------------------
> 
>                             *From:*Rudolf J Streif
>                             <rudolf.streif@ibeeto.com>
>                             <mailto:rudolf.streif@ibeeto.com>
>                             *Sent:* Wednesday, May 15, 2019 10:07:47 AM
>                             *To:* Greg Wilson-Lindberg; Yocto list
>                             discussion
>                             *Subject:* Re: [yocto] problem adding a user____
> 
>                             ____
> 
>                             Hi Greg,
> 
>                             Well, I suppose I wrote the book you are
>                             referring to...
> 
> 
>                             Using
> 
>                             useradd -p PASSWORD USER
> 
>                             takes the password hash for PASSWORD hence
>                             the use of openssl in:
> 
>                             useadd -p `openssl passwd PASSWORD` USER
> 
>                             openssl password creates the password hash
>                             using the original crypt hash
>                             algorithm if no other options are specified.
>                             e.g.
> 
>                             $ openssl passwd hello
>                             6hEsTksgRkeiI
> 
>                             With this the first two characters of the
>                             output is the salt and the
>                             rest is the password hash. If you want
>                             openssl to create the same result
>                             again:
> 
>                             $ openssl passwd -salt "6h" hello
>                             6hEsTksgRkeiI
> 
>                             You can use newer algorithms like MD5 based
>                             BSD password algorithm 1:
> 
>                             $ openssl passwd -1 hello
>                             $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1
> 
>                             $1 : password algorithm 1
>                             $4Mu8Fcs. : salt
>                             $eIKgPP7RCYrb3lFZjhADA1 : password hash
> 
> 
>                             If you log into the system you have to use
>                             the clear password. The
>                             system reads the salt, creates the password
>                             hash and compares the results.
> 
> 
>                             :rjs
> 
> 
>                             On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
>                             > I'm trying to use the example in "Embedded Linux Systems with the Yocto Project" to add a user to my Yocto build. In the book the sample code:
>                             >
>                             >     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>                             >
>                             > uses openssl to generate the encrypted password string to pass to useradd. I have never been able to get this to work. When I run the openssl
>                             > command on the cmd line I get a different value every time, this seems wrong, How can the password code compare against it if every encode
>                             > produces a different value?
>                             >
>                             > I am getting the user added to the system, the home directory shows up and the user is in the passwd and group files. I just can't login to the
>                             > account.
>                             >
>                             > I've obviously got something confused, any help would be appreciated.
>                             >
>                             > Greg Wilson-Lindberg
>                             >   
> 
>                             -- 
>                             -----
>                             Rudolf J Streif
>                             CEO/CTO ibeeto
>                             +1.855.442.3396 x700____
> 
>                         -- ____
> 
>                         -----____
> 
>                         Rudolf J Streif____
> 
>                         CEO/CTO ibeeto____
> 
>                         +1.855.442.3396 x700____
> 
>                     -- ____
> 
>                     -----____
> 
>                     Rudolf J Streif____
> 
>                     CEO/CTO ibeeto____
> 
>                     +1.855.442.3396 x700____
> 
>                 -- ____
> 
>                 -----____
> 
>                 Rudolf J Streif____
> 
>                 CEO/CTO ibeeto____
> 
>                 +1.855.442.3396 x700____
> 
> 
> 
>     -- 
>     Rudolf J Streif
>     CEO/CTO
>     ibeeto, Streif Enterprises Inc.
> 
> 
> 
> -- 
> Rudolf J Streif
> CEO/CTO
> ibeeto, Streif Enterprises Inc.
> 

