Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D080E00B81; Thu, 23 May 2019 14:44:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28483E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 14:44:16 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id z11so4500998vsq.9
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 14:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OX9qzrt2jTEGjddmsCQiBwMTFqZKhFu3bjDgFKcL0bI=;
	b=c/3PLrRCMj07fpPvrOc5SRMwXESh1JzCidUt4J4uGmxeVMESB2p8f5od2cXCUKeb1r
	K7KZmzlgpKsSNM6JSJJsynAHVd64hLtlARi28qROqB/2TqABTVDAmXByDFJtg5js0yMA
	S7W3xJZtOX7pXeK+KcFkJIu86qaT+Hj6dXVRfX95lBydn1eznNeJXZJWnGG0IsjdnVRY
	rY7HZ0pmqTn/gHvUtEOJuHhI7uzGDMxVfqWwR/hftvehKNXy2Cfr+bfPvOSkRFXQw8kZ
	V57eKI/CpAy4TMMTpYTvO97buKhGUZFlVh63x+zxNaXkiF2oLch0Mh+9lBWjDPF8en1g
	QsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OX9qzrt2jTEGjddmsCQiBwMTFqZKhFu3bjDgFKcL0bI=;
	b=YV+Yw/Bk0ZvcA8jnoN9cvVGwSvxo4UgCAdNsUwQ4M3/K8avCkxxZJZMfBD7C0cISp4
	1M+l0kfkic/RDdg0V/bVOBqXHcGwTjc5tl5pAPHmJd+jwbovazZuk4TCg3cWHKeW5EZ4
	oCH0TuPVSSEQtxIAwn5CpBzSEpiimMJms5itjSzDcS+4xD1n5oUI2i8fEiermxQZwZnV
	ND8iUL8ZW6j/i35/TX1FGAUEeIqYZS+UdcYQIhkO8OOSFMXkvpX9485dI3iLIpAse+6Y
	WMbR2UkEme17V1kMTDbCPYg5y1wddh/prA8M55QmBmeZwVQXHmPw4+wnpYc6qRt2INSt
	fIyA==
X-Gm-Message-State: APjAAAVNzsDVWrxVRKECB5hOOx2Xcm4OHwoJsS2NTmWeNZrv+mw1wJO7
	FozKnmPyoeiPyriFBO074IVVZ1PzbCE7hl03V0/k2Q==
X-Google-Smtp-Source: APXvYqxYEa+q2iSOpeYmGrzkkf7qu5KA5VFCQAwHISVHYGZMq/ZndS/vS0PvP0lkwwSuGRWJDniTbbR064aMAKnPjpo=
X-Received: by 2002:a67:ca9a:: with SMTP id a26mr20376232vsl.92.1558647855916; 
	Thu, 23 May 2019 14:44:15 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <CAPxNcncwb+53vGh6FYuf1=m7OB6RNqds4OoUenED9LtQfnP5WA@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 23 May 2019 23:44:04 +0200
Message-ID: <CAMjhiJga1e2ikaszmOB0fPrn0aAtKxXuJCSy2rpFY8Y6m0GcOw@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@ibeeto.com>
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
X-List-Received-Date: Thu, 23 May 2019 21:44:20 -0000
Content-Type: multipart/alternative; boundary="000000000000c83d62058994fb30"

--000000000000c83d62058994fb30
Content-Type: text/plain; charset="UTF-8"

Hello Rudolf, Greg,

On Thu, 23 May 2019 at 22:43, Rudolf Streif <rudolf.streif@ibeeto.com>
wrote:

>
> It eluded me earlier but in both instances the variable containing the
> password does not seem to be expanded.
>

Could it be the spaces around the = equal sign must be removed?

https://unix.stackexchange.com/questions/258727/spaces-in-variable-assignments-in-shell-scripts

Regards, Leon


> First version without the single quotes:
>
> SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
>
> EXTRA_USERS_PARAMS = "\
>     usermod -p ${SAKURA_PASS} ${SAKURA_USER}; \
>     usermod -a -G sudo,dialout ${SAKURA_USER}; \
>     "
> results in:
>
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]
>
> and with the quotes:
>
> SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
>
> EXTRA_USERS_PARAMS = "\
>     usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
>     usermod -a -G sudo,dialout ${SAKURA_USER}; \
>     "
> results in:
> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p '' sakura]
>
> It looks as if the variable SAKURA_PASS is not set at all. I looked at your scribe.bb recipe you attached earlier but I could not find any reason why the variable is not set. Is there a chance that it is overridden somewhere elase?
>
> :rjs
>
>
> On Wed, May 22, 2019 at 1:28 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
> wrote:
>
>> Rudolf,
>>
>> Here is the first half of the file,  the whole file is over the 500k
>> limit of free pastebin:
>>
>> https://pastebin.com/UcnKebce
>>
>>
>> And here is the 2nd half of the file:
>>
>> https://pastebin.com/9117tdUU
>>
>>
>> Greg
>> ------------------------------
>> *From:* Rudolf Streif <rudolf.streif@ibeeto.com>
>> *Sent:* Wednesday, May 22, 2019 12:42:40 PM
>> *To:* Greg Wilson-Lindberg
>> *Cc:* Yocto list discussion
>> *Subject:* Re: [yocto] problem adding a user
>>
>> Greg,
>> Can you share the logfile via Pastebin?
>> :rjs
>>
>> On Tue, May 21, 2019 at 11:09 AM Greg Wilson-Lindberg <
>> GWilson@sakuraus.com> wrote:
>>
>>> Rudolf,
>>>
>>> Something else is happening to me. I changed to this in the image recipe:
>>>
>>> SAKURA_USER = "sakura"
>>>
>>> SAKURA_PASSWD = "Distracted"
>>> SAKURA_PASS = "$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0"
>>>
>>> EXTRA_USERS_PARAMS = "\
>>>     usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
>>>     usermod -a -G sudo,dialout ${SAKURA_USER}; \
>>>     "
>>>
>>> deleting all of the commented out lines, and I get this in the log file:
>>>
>>>
>>> ..../scribe/1.0-r0/rootfs -p '' sakura]
>>>
>>>
>>> nothing between the single quotes. It's acting like SAKURA_PASS is not
>>> defined.
>>>
>>> This is only happening when I'm trying the MD5 password.
>>>
>>>
>>> Greg
>>> ------------------------------
>>> *From:* Rudolf Streif <rudolf.streif@ibeeto.com>
>>> *Sent:* Tuesday, May 21, 2019 5:37:23 AM
>>> *To:* Greg Wilson-Lindberg
>>> *Cc:* Yocto list discussion
>>> *Subject:* Re: [yocto] problem adding a user
>>>
>>> Greg,
>>>
>>> usermod does not work for the MD5 algorithm with the explicit password
>>> hash as it contains the $ field delimiters which are interpreted by the
>>> shell executing the usermod command. Use single quotes around the password
>>> hash:
>>>
>>> usermod -p '${SAKURA_PASS}' ${SAKURA_USER};
>>>
>>> :rjs
>>>
>>> On Mon, May 20, 2019, 11:55 Greg Wilson-Lindberg <GWilson@sakuraus.com>
>>> wrote:
>>>
>>>> Hi Rudolf,
>>>>
>>>> I've had more time to work with this and I'm still having problems getting
>>>> everything to work properly. I've attached the image recipe recipe that I'm
>>>> using so I don't leave any thing out that may be relevant.
>>>>
>>>> When I build with a password that is no more more than 8 characters long
>>>> and no non-alphabetic characters:
>>>>
>>>> SAKURA_PASSWD = "Distract"
>>>> SAKURA_PASS = "WRsDFfg1BsrDM"
>>>>
>>>> everything works correctly.
>>>>
>>>> I first tried that using the `openssl ...` form, and then I tried the
>>>> -1, MD5 BSD form and had problems, so I changed to doing the openssl
>>>> on the command line and making sure that I don't have any characters
>>>> that display as '.' or '/'. Again, if I don't do more than 8 characters
>>>> and no special characters everything works.
>>>>
>>>> When I changed to using 'Ds$tr@ct' it stopped working. The build finishes
>>>> and the log file shows the usermod being exectued correctly:
>>>>
>>>> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
>>>> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -a -G sudo,dialout sakura]
>>>>
>>>> But when I try to sign in it doesn't work.
>>>>
>>>> I then tried the 10 character password 'Distracted', the build fails:
>>>>
>>>> NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]
>>>> Usage: usermod [options] LOGIN
>>>>
>>>> Options:
>>>>   -c, --comment COMMENT         new value of the GECOS field
>>>>   -d, --home HOME_DIR           new home directory for the user account
>>>>   -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
>>>>   -f, --inactive INACTIVE       set password inactive after expiration
>>>>                                 to INACTIVE
>>>>   -g, --gid GROUP               force use GROUP as new primary group
>>>>   -G, --groups GROUPS           new list of supplementary GROUPS
>>>>   -a, --append                  append the user to the supplemental GROUPS
>>>>                                 mentioned by the -G option without removing
>>>>                                 him/her from other groups
>>>>   -h, --help                    display this help message and exit
>>>>   -l, --login NEW_LOGIN         new value of the login name
>>>>   -L, --lock                    lock the user account
>>>>   -m, --move-home               move contents of the home directory to the
>>>>                                 new location (use only with -d)
>>>>   -o, --non-unique              allow using duplicate (non-unique) UID
>>>>   -p, --password PASSWORD       use encrypted password for the new password
>>>>   -P, --clear-password PASSWORD use clear password for the new password
>>>>   -R, --root CHROOT_DIR         directory to chroot into
>>>>   -s, --shell SHELL             new login shell for the user account
>>>>   -u, --uid UID                 new UID for the user account
>>>>   -U, --unlock                  unlock the user account
>>>>   -v, --add-subuids FIRST-LAST  add range of subordinate uids
>>>>   -V, --del-subuids FIRST-LAST  remove range of subordinate uids
>>>>   -w, --add-subgids FIRST-LAST  add range of subordinate gids
>>>>   -W, --del-subgids FIRST-LAST  remove range of subordinate gids
>>>>
>>>> ERROR: scribe: usermod command did not succeed.
>>>>
>>>> So, even though I'm putting in the openssl output:
>>>> openssl passwd -1 "Distracted"
>>>> $1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0
>>>>
>>>> that I get back from what should be a valid run of openssl, I don't see anything
>>>> from the password on the usermod command line:
>>>>  "...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]"
>>>>
>>>> I don't understand why the short passwords and passing along the proper hash works,
>>>> but not the longer password.
>>>>
>>>> It also doesn't make sense that I can't put in the '$' & '@' characters and
>>>> have them work.
>>>>
>>>> Any suggestions would be greatly appreciated.
>>>>
>>>> Greg
>>>>
>>>> ------------------------------
>>>> *From:* Rudolf Streif <rudolf.streif@ibeeto.com>
>>>> *Sent:* Wednesday, May 15, 2019 4:58:26 PM
>>>> *To:* Greg Wilson-Lindberg
>>>> *Cc:* Yocto list discussion
>>>> *Subject:* Re: [yocto] problem adding a user
>>>>
>>>> Glad to hear that it works now. I am planning on attending the YP
>>>> DevDay.
>>>>
>>>> :rjs
>>>>
>>>> On Wed, May 15, 2019, 13:53 Greg Wilson-Lindberg <GWilson@sakuraus.com>
>>>> wrote:
>>>>
>>>>> Thank you very much, that got me back on the right path.
>>>>>
>>>>> Maybe I'll see you at the Yocto day at the Embedded Linux Conference.
>>>>>
>>>>> Regards,
>>>>>
>>>>> [image: cid:image001.png@01D35D7D.179A7510]
>>>>>
>>>>> *Greg Wilson-Lindberg  *
>>>>>
>>>>> *Principal Firmware Engineer | Sakura Finetek USA, Inc.  *
>>>>>
>>>>>
>>>>>
>>>>> 1750 W 214
>>>>> <https://maps.google.com/?q=1750+W+214&entry=gmail&source=g>th Street
>>>>> | Torrance, CA 90501 | U.S.A.
>>>>>
>>>>> T: +1 310 783 5075
>>>>>
>>>>> F: +1 310 618 6902 | E: gwilson@sakuraus.com
>>>>>
>>>>> www.sakuraus.com
>>>>>
>>>>>
>>>>>
>>>>> [image: cid:image002.png@01D35D7D.179A7510]
>>>>>
>>>>> [image: cid:image003.png@01D35D7D.179A7510]
>>>>> ------------------------------
>>>>>
>>>>> Confidentiality Notice: This e-mail transmission may contain
>>>>> confidential or legally privileged information that is intended only for
>>>>> the individual or entity named in the e-mail address. If you are not the
>>>>> intended recipient, you are hereby notified that any disclosure, copying,
>>>>> distribution, or reliance upon the contents of this e-mail is strictly
>>>>> prohibited. If you have received this e-mail transmission in error, please
>>>>> reply to the sender, so that Sakura Finetek USA, Inc. can arrange for
>>>>> proper delivery, and then please delete the message from your inbox. Thank
>>>>> you.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> *From:* Rudolf J Streif [mailto:rudolf.streif@ibeeto.com]
>>>>> *Sent:* Wednesday, May 15, 2019 01:30 PM
>>>>> *To:* Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list
>>>>> discussion <yocto@yoctoproject.org>
>>>>> *Subject:* Re: [yocto] problem adding a user
>>>>>
>>>>>
>>>>>
>>>>> Instead of
>>>>>
>>>>>
>>>>>
>>>>> useradd -p `openssl passwd test` sakura
>>>>>
>>>>>
>>>>>
>>>>> which attempts to add the user and set the password which fails if the
>>>>> user already exists, use
>>>>>
>>>>>
>>>>>
>>>>> usermod -p `openssl passwd test` sakura
>>>>>
>>>>>
>>>>>
>>>>> which sets the user's password.
>>>>>
>>>>>
>>>>>
>>>>> :rjs
>>>>>
>>>>>
>>>>>
>>>>> On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:
>>>>>
>>>>> Ok, I had been using the useradd class in a couple of other recipes to
>>>>> allow me to copy files to the sakura user directory and another location,
>>>>> but owned by sakura. That seems to have been what was causing the problem.
>>>>>
>>>>>
>>>>>
>>>>> I had been using the extrausers class in my top level image recipe.
>>>>>
>>>>>
>>>>> So now how do I get all of this to work together? Do I need to put
>>>>> everything that touches the sakura user in the same recipe? It seems that I
>>>>> need to use only one of the useradd or extrausers classes?
>>>>>
>>>>>
>>>>>
>>>>> Greg
>>>>> ------------------------------
>>>>>
>>>>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>>>>> <rudolf.streif@ibeeto.com>
>>>>> *Sent:* Wednesday, May 15, 2019 12:31 PM
>>>>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>>>>> *Subject:* Re: [yocto] problem adding a user
>>>>>
>>>>>
>>>>>
>>>>> The ! for the password in /etc/shadow indicates that the account is
>>>>> disabled:
>>>>>
>>>>> sakura:!:18031:0:99999:7:::
>>>>>
>>>>>
>>>>>
>>>>> Either there is something wrong with the password generation or it
>>>>> gets disabled by something else. Maybe it's worth trying with a plain image
>>>>> without Boot2Qt or anything else.
>>>>>
>>>>>
>>>>>
>>>>> :rjs
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:
>>>>>
>>>>> Hi Rudolf,
>>>>>
>>>>> 1st, yes I inherit extrausers. Attached are the passwd & shadow files.
>>>>>
>>>>>
>>>>>
>>>>> It shouldn't make any difference, but I'm building this for an RPi3
>>>>> using the Qt Boot2Qt version of the Yocto environment, distro 2.5.3.
>>>>>
>>>>>
>>>>>
>>>>> Greg
>>>>> ------------------------------
>>>>>
>>>>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>>>>> <rudolf.streif@ibeeto.com>
>>>>> *Sent:* Wednesday, May 15, 2019 11:26 AM
>>>>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>>>>> *Subject:* Re: [yocto] problem adding a user
>>>>>
>>>>>
>>>>>
>>>>> Hi Greg,
>>>>>
>>>>>
>>>>>
>>>>> > I've also tried both the back-quote and the single-quote, no
>>>>> difference.
>>>>>
>>>>>
>>>>>
>>>>> Help me to understand this. the back-quotes are the right ones. If you
>>>>> use the single ones your password in the /etc/shadow ends up being 'openssl
>>>>> passwd test' (without the quotes), unless the build fails because of a
>>>>> parsing error (I have not tried it). Silly question, you did inherit
>>>>> extrausers class?
>>>>>
>>>>>
>>>>>
>>>>> Can you post your /etc/passwd and /etc/shadow
>>>>>
>>>>>
>>>>>
>>>>> I am surprised that this does not work with your setup. I have been
>>>>> doing this a gazillion times always with success.
>>>>>
>>>>>
>>>>>
>>>>> :rjs
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:
>>>>>
>>>>> Hi Rudolf,
>>>>>
>>>>> Thanks for the reply, and the information on how openssl works.
>>>>>
>>>>>
>>>>>
>>>>> I'm trying to create a user with the same group name so the code that
>>>>> I'm using reduces to:
>>>>>
>>>>> EXTRA_USERS_PARAMS = "\
>>>>>
>>>>>     useradd -p `openssl passwd test` sakura; \
>>>>>
>>>>>     usermod -a -G sudo ${SAKURA_USER}; \
>>>>>
>>>>>     "
>>>>>
>>>>> I also, as you can see, removed the macros to eliminate as much
>>>>> confusion as possible.
>>>>>
>>>>>
>>>>>
>>>>> I still can't login in using the password 'test'.
>>>>>
>>>>>
>>>>>
>>>>> I've also tried both the back-quote and the single-quote, no
>>>>> difference.
>>>>>
>>>>> Regards,
>>>>>
>>>>>
>>>>>
>>>>> Greg
>>>>> ------------------------------
>>>>>
>>>>> *From:* Rudolf J Streif <rudolf.streif@ibeeto.com>
>>>>> <rudolf.streif@ibeeto.com>
>>>>> *Sent:* Wednesday, May 15, 2019 10:07:47 AM
>>>>> *To:* Greg Wilson-Lindberg; Yocto list discussion
>>>>> *Subject:* Re: [yocto] problem adding a user
>>>>>
>>>>>
>>>>>
>>>>> Hi Greg,
>>>>>
>>>>> Well, I suppose I wrote the book you are referring to...
>>>>>
>>>>>
>>>>> Using
>>>>>
>>>>> useradd -p PASSWORD USER
>>>>>
>>>>> takes the password hash for PASSWORD hence the use of openssl in:
>>>>>
>>>>> useadd -p `openssl passwd PASSWORD` USER
>>>>>
>>>>> openssl password creates the password hash using the original crypt
>>>>> hash
>>>>> algorithm if no other options are specified. e.g.
>>>>>
>>>>> $ openssl passwd hello
>>>>> 6hEsTksgRkeiI
>>>>>
>>>>> With this the first two characters of the output is the salt and the
>>>>> rest is the password hash. If you want openssl to create the same
>>>>> result
>>>>> again:
>>>>>
>>>>> $ openssl passwd -salt "6h" hello
>>>>> 6hEsTksgRkeiI
>>>>>
>>>>> You can use newer algorithms like MD5 based BSD password algorithm 1:
>>>>>
>>>>> $ openssl passwd -1 hello
>>>>> $1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1
>>>>>
>>>>> $1 : password algorithm 1
>>>>> $4Mu8Fcs. : salt
>>>>> $eIKgPP7RCYrb3lFZjhADA1 : password hash
>>>>>
>>>>>
>>>>> If you log into the system you have to use the clear password. The
>>>>> system reads the salt, creates the password hash and compares the
>>>>> results.
>>>>>
>>>>>
>>>>> :rjs
>>>>>
>>>>>
>>>>> On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
>>>>> > I'm trying to use the example in "Embedded Linux Systems with the
>>>>> Yocto Project" to add a user to my Yocto build. In the book the sample code:
>>>>> >
>>>>> >     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>>>>> >
>>>>> > uses openssl to generate the encrypted password string to pass to
>>>>> useradd. I have never been able to get this to work. When I run the openssl
>>>>> > command on the cmd line I get a different value every time, this
>>>>> seems wrong, How can the password code compare against it if every encode
>>>>> > produces a different value?
>>>>> >
>>>>> > I am getting the user added to the system, the home directory shows
>>>>> up and the user is in the passwd and group files. I just can't login to the
>>>>> > account.
>>>>> >
>>>>> > I've obviously got something confused, any help would be appreciated.
>>>>> >
>>>>> > Greg Wilson-Lindberg
>>>>> >
>>>>>
>>>>> --
>>>>> -----
>>>>> Rudolf J Streif
>>>>> CEO/CTO ibeeto
>>>>> +1.855.442.3396 x700
>>>>>
>>>>> --
>>>>>
>>>>> -----
>>>>>
>>>>> Rudolf J Streif
>>>>>
>>>>> CEO/CTO ibeeto
>>>>>
>>>>> +1.855.442.3396 x700
>>>>>
>>>>> --
>>>>>
>>>>> -----
>>>>>
>>>>> Rudolf J Streif
>>>>>
>>>>> CEO/CTO ibeeto
>>>>>
>>>>> +1.855.442.3396 x700
>>>>>
>>>>> --
>>>>>
>>>>> -----
>>>>>
>>>>> Rudolf J Streif
>>>>>
>>>>> CEO/CTO ibeeto
>>>>>
>>>>> +1.855.442.3396 x700
>>>>>
>>>>>
>>
>> --
>> Rudolf J Streif
>> CEO/CTO
>> ibeeto, Streif Enterprises Inc.
>>
>
>
> --
> Rudolf J Streif
> CEO/CTO
> ibeeto, Streif Enterprises Inc.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch
Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--000000000000c83d62058994fb30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hello Rudolf, Greg,</div></div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 23 May 2019 =
at 22:43, Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rud=
olf.streif@ibeeto.com</a>&gt; wrote:</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr"><div><br></div><div>It eluded me earlier but in both instanc=
es the variable containing the password does not seem to be expanded.</div>=
</div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Could it b=
e the spaces around the =3D equal sign must be removed?</div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><div><a href=3D"https://unix.stackexchange.=
com/questions/258727/spaces-in-variable-assignments-in-shell-scripts">https=
://unix.stackexchange.com/questions/258727/spaces-in-variable-assignments-i=
n-shell-scripts</a></div><br></div><div dir=3D"auto">Regards, Leon</div><di=
v dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv></div><div><br></div><div>First version without the single quotes:</div>=
<div><br></div><div><span style=3D"color:rgb(0,0,0);font-family:Calibri,Ari=
al,Helvetica,sans-serif;font-size:16px">SAKURA_PASS =3D &quot;$1$QVO3K6Ii$<=
/span><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,s=
ans-serif;font-size:16px">fvkoDKnlzz3d5uVoL7KcM0&quot;</span><br style=3D"c=
olor:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16=
px"><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif;font-size:16px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,A=
rial,Helvetica,sans-serif;font-size:16px">EXTRA_USERS_PARAMS =3D &quot;\</s=
pan><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif;font-size:16px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,A=
rial,Helvetica,sans-serif;font-size:16px">=C2=A0=C2=A0=C2=A0 usermod -p ${S=
AKURA_PASS} ${SAKURA_USER}; \</span><br style=3D"color:rgb(0,0,0);font-fami=
ly:Calibri,Arial,Helvetica,sans-serif;font-size:16px"><span style=3D"color:=
rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px">=
=C2=A0=C2=A0=C2=A0 usermod -a -G sudo,dialout ${SAKURA_USER}; \</span><br s=
tyle=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;fon=
t-size:16px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helv=
etica,sans-serif;font-size:16px">=C2=A0=C2=A0=C2=A0 &quot;</span><br></div>=
<div><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sa=
ns-serif;font-size:16px">results in:</span></div><div><br></div><div><pre s=
tyle=3D"white-space:pre-wrap;color:rgb(0,0,0);font-size:16px">NOTE: scribe:=
 Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/bu=
ild-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scribe/1.0-r0/roo=
tfs -p sakura]</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0);fon=
t-size:16px"><font face=3D"times new roman, serif">and with the quotes:</fo=
nt></pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0);font-size:16px=
"><div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:small;white-space:normal"><span style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;font-size:16px">SAKURA_PASS =3D &qu=
ot;$1$QVO3K6Ii$</span><span style=3D"color:rgb(0,0,0);font-family:Calibri,A=
rial,Helvetica,sans-serif;font-size:16px">fvkoDKnlzz3d5uVoL7KcM0&quot;</spa=
n><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:16px"><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:16px"><span style=3D"color:rgb(0,0,0);font-=
family:Calibri,Arial,Helvetica,sans-serif;font-size:16px">EXTRA_USERS_PARAM=
S =3D &quot;\</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,Arial=
,Helvetica,sans-serif;font-size:16px"><span style=3D"color:rgb(0,0,0);font-=
family:Calibri,Arial,Helvetica,sans-serif;font-size:16px">=C2=A0=C2=A0=C2=
=A0 usermod -p &#39;${SAKURA_PASS}&#39; ${SAKURA_USER}; \</span><br style=
=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-si=
ze:16px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetic=
a,sans-serif;font-size:16px">=C2=A0=C2=A0=C2=A0 usermod -a -G sudo,dialout =
${SAKURA_USER}; \</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,A=
rial,Helvetica,sans-serif;font-size:16px"><span style=3D"color:rgb(0,0,0);f=
ont-family:Calibri,Arial,Helvetica,sans-serif;font-size:16px">=C2=A0=C2=A0=
=C2=A0 &quot;</span><br></div><div style=3D"color:rgb(34,34,34);font-family=
:Arial,Helvetica,sans-serif;font-size:small;white-space:normal"><span style=
=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-si=
ze:16px">results in:</span></div>NOTE: scribe: Performing usermod with [-R =
/home/gwilson/Qt/Qt-5.12.3/Yocto-build-RPi3/build-raspberrypi3/tmp/work/ras=
pberrypi3-poky-linux-gnueabi/scribe/1.0-r0/rootfs -p &#39;&#39; sakura]<br =
class=3D"m_163342458542801405gmail-Apple-interchange-newline"></pre><pre st=
yle=3D"white-space:pre-wrap;color:rgb(0,0,0);font-size:16px"><font face=3D"=
times new roman, serif">It looks as if the variable SAKURA_PASS is not set =
at all. I looked at your <a href=3D"http://scribe.bb" target=3D"_blank">scr=
ibe.bb</a> recipe you attached earlier but I could not find any reason why =
the variable is not set. Is there a chance that it is overridden somewhere =
elase?</font></pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0);font=
-size:16px">:rjs</pre></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 22, 2019 at 1:28 PM Greg Wilson-L=
indberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWils=
on@sakuraus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">



<div>

<div id=3D"m_163342458542801405gmail-m_3437460169442067041divtagdefaultwrap=
per" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Hel=
vetica,sans-serif">
<p>Rudolf,</p>
<p>Here is the first half of the file,=C2=A0 the whole=C2=A0file is over th=
e 500k limit of free pastebin:</p>
<p><a href=3D"https://pastebin.com/UcnKebce" class=3D"m_163342458542801405g=
mail-m_3437460169442067041OWAAutoLink" id=3D"m_163342458542801405gmail-m_34=
37460169442067041LPlnk853779" target=3D"_blank">https://pastebin.com/UcnKeb=
ce</a><br>
</p>
<p><br>
</p>
<p>And here is the 2nd half of the file:</p>
<p><a href=3D"https://pastebin.com/9117tdUU" class=3D"m_163342458542801405g=
mail-m_3437460169442067041OWAAutoLink" id=3D"m_163342458542801405gmail-m_34=
37460169442067041LPlnk630047" target=3D"_blank">https://pastebin.com/9117td=
UU</a><br>
</p>
<p><br>
</p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_163342458542801405gmail-m_3437460169442067041divRplyFwdMsg" di=
r=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=
=3D"#000000"><b>From:</b> Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif=
@ibeeto.com" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;<br>
<b>Sent:</b> Wednesday, May 22, 2019 12:42:40 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Greg,
<div>Can you share the logfile via Pastebin?</div>
<div>:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 21, 2019 at 11:09 AM Greg=
 Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_bla=
nk">GWilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678divtagdefaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Rudolf,</p>
<p>Something else is happening to me. I changed to this in the image recipe=
:</p>
<p></p>
<div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-style=
:normal;font-weight:normal;text-decoration:none">
<pre></pre>
</div>
<p></p>
<div>SAKURA_USER =3D &quot;sakura&quot;<br>
<br>
SAKURA_PASSWD =3D &quot;Distracted&quot;<br>
SAKURA_PASS =3D &quot;$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0&quot;<br>
<br>
EXTRA_USERS_PARAMS =3D &quot;\<br>
=C2=A0=C2=A0=C2=A0 usermod -p &#39;${SAKURA_PASS}&#39; ${SAKURA_USER}; \<br=
>
=C2=A0=C2=A0=C2=A0 usermod -a -G sudo,dialout ${SAKURA_USER}; \<br>
=C2=A0=C2=A0=C2=A0 &quot;<br>
</div>
<p>deleting all of the commented out lines,=C2=A0and I get this in the log =
file:</p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">..../scribe/1.0-r0/rootfs -p &#39;&#39; s=
akura]</span><br>
</p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">nothing between the single quotes. It&#39=
;s acting like SAKURA_PASS is not defined.</span></p>
<p><span style=3D"font-size:12pt">This is only happening when I&#39;m tryin=
g the MD5 password.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Greg</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rudolf Streif &lt;<a h=
ref=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">rudolf.streif@ibe=
eto.com</a>&gt;<br>
<b>Sent:</b> Tuesday, May 21, 2019 5:37:23 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Greg,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">usermod does not work for the MD5 algorithm with the expl=
icit password hash as it contains the $ field delimiters which are interpre=
ted by the shell executing the usermod command. Use single quotes around th=
e password hash:</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">usermod -p &#39;${SAKURA_PASS}&#39; ${SAKURA_USER};<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 20, 2019, 11:55 Greg Wils=
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">G=
Wilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-style=
:normal;font-weight:normal;text-decoration:none">
<pre>Hi Rudolf,

I&#39;ve had more time to work with this and I&#39;m still having problems =
getting=20
everything to work properly. I&#39;ve attached the image recipe recipe that=
 I&#39;m=20
using so I don&#39;t leave any thing out that may be relevant.

When I build with a password that is no more more than 8 characters long
and no non-alphabetic characters:</pre>
<pre><div style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255);font-=
style:normal;font-weight:normal;text-decoration:none"><pre>SAKURA_PASSWD =
=3D &quot;Distract&quot;
SAKURA_PASS =3D &quot;WRsDFfg1BsrDM&quot;
</pre></div></pre>
<pre>everything works correctly.=20

I first tried that using the `openssl ...` form, and then I tried the=20
-1, MD5 BSD form and had problems, so I changed to doing the openssl=20
on the command line and making sure that I don&#39;t have any characters=20
that display as &#39;.&#39; or &#39;/&#39;. Again, if I don&#39;t do more t=
han 8 characters
and no special characters everything works.

When I changed to using &#39;Ds$tr@ct&#39; it stopped working. The build fi=
nishes
and the log file shows the usermod being exectued correctly:

NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p kyNsrvS0elMWU sakura]
NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -a -G sudo,dialout sakura]

But when I try to sign in it doesn&#39;t work.

I then tried the 10 character password &#39;Distracted&#39;, the build fail=
s:

NOTE: scribe: Performing usermod with [-R /home/gwilson/Qt/Qt-5.12.3/Yocto-=
build-RPi3/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/scri=
be/1.0-r0/rootfs -p sakura]
Usage: usermod [options] LOGIN

Options:
  -c, --comment COMMENT         new value of the GECOS field
  -d, --home HOME_DIR           new home directory for the user account
  -e, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -f, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -g, --gid GROUP               force use GROUP as new primary group
  -G, --groups GROUPS           new list of supplementary GROUPS
  -a, --append                  append the user to the supplemental GROUPS
                                mentioned by the -G option without removing
                                him/her from other groups
  -h, --help                    display this help message and exit
  -l, --login NEW_LOGIN         new value of the login name
  -L, --lock                    lock the user account
  -m, --move-home               move contents of the home directory to the
                                new location (use only with -d)
  -o, --non-unique              allow using duplicate (non-unique) UID
  -p, --password PASSWORD       use encrypted password for the new password
  -P, --clear-password PASSWORD use clear password for the new password
  -R, --root CHROOT_DIR         directory to chroot into
  -s, --shell SHELL             new login shell for the user account
  -u, --uid UID                 new UID for the user account
  -U, --unlock                  unlock the user account
  -v, --add-subuids FIRST-LAST  add range of subordinate uids
  -V, --del-subuids FIRST-LAST  remove range of subordinate uids
  -w, --add-subgids FIRST-LAST  add range of subordinate gids
  -W, --del-subgids FIRST-LAST  remove range of subordinate gids

ERROR: scribe: usermod command did not succeed.

So, even though I&#39;m putting in the openssl output:
openssl passwd -1 &quot;Distracted&quot;
$1$QVO3K6Ii$fvkoDKnlzz3d5uVoL7KcM0

that I get back from what should be a valid run of openssl, I don&#39;t see=
 anything
from the password on the usermod command line:
 &quot;...linux-gnueabi/scribe/1.0-r0/rootfs -p sakura]&quot;

I don&#39;t understand why the short passwords and passing along the proper=
 hash works,=20
but not the longer password.

It also doesn&#39;t make sense that I can&#39;t put in the &#39;$&#39; &amp=
; &#39;@&#39; characters and=20
have them work.

Any suggestions would be greatly appreciated.</pre>
<pre><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:12pt">Gre=
g</span>
</pre>
</div>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#00000=
0"><b>From:</b> Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.co=
m" rel=3D"noreferrer" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;<br=
>
<b>Sent:</b> Wednesday, May 15, 2019 4:58:26 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Glad to hear that it works now. I am planning on attendin=
g the YP DevDay.
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">:rjs</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 2019, 13:53 Greg Wils=
on-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" rel=3D"noreferrer" =
target=3D"_blank">GWilson@sakuraus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"white" lang=3D"EN-US">
<div class=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191=
6321849903678m_-4811443116236749811m_-4293760156557775355WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Thank you very much, that got me back on the right path=
.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Maybe I&#39;ll see you at the Yocto day at the Embedded=
 Linux Conference.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black">Regards,<u></u><u></u></span></p>
<div>
<table class=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_8411=
916321849903678m_-4811443116236749811m_-4293760156557775355MsoNormalTable" =
border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"97=
%" style=3D"width:97.66%">
<tbody>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img width=3D"36" height=
=3D"7" id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_8411916=
321849903678m_-4811443116236749811m_-4293760156557775355Picture_x0020_1" al=
t=3D"cid:image001.png@01D35D7D.179A7510"><u></u><u></u></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(0,137,209)"=
>Greg Wilson-Lindberg=C2=A0
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:11pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">=
Principal Firmware Engineer | Sakura Finetek USA, Inc.=C2=A0
<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:10.5pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)=
">=C2=A0<u></u><u></u></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)"><a =
href=3D"https://maps.google.com/?q=3D1750+W+214&amp;entry=3Dgmail&amp;sourc=
e=3Dg">1750 W 214</a><sup>th</sup> Street | Torrance, CA 90501 | U.S.A.=C2=
=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(=
88,89,91)">T: +1 310 783 5075=C2=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span lang=3D"DE" style=
=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(=
88,89,91)">F: +1 310 618 6902 | E:=C2=A0</span><span lang=3D"DE" style=3D"f=
ont-size:11pt;line-height:105%;font-family:Calibri,sans-serif;color:black">=
<a href=3D"mailto:gwilson@sakuraus.com" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank"><span style=3D"color:rgb(5,99,193)">gwilson</span><span style=
=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(=
5,99,193)">@sakuraus.com</span></a></span><span lang=3D"DE" style=3D"font-s=
ize:10pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)"=
>=C2=A0=C2=A0
 =C2=A0=C2=A0 <u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
11pt;line-height:105%;font-family:Calibri,sans-serif;color:black"><a href=
=3D"http://www.sakuraus.com" rel=3D"noreferrer noreferrer" target=3D"_blank=
"><span style=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-ser=
if;color:rgb(0,137,209);text-decoration:none">www.sakuraus.com</span></a></=
span><span style=3D"font-size:10pt;line-height:105%;font-family:Arial,sans-=
serif;color:rgb(0,137,209)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
9pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">=C2=
=A0<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<table class=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_8411=
916321849903678m_-4811443116236749811m_-4293760156557775355MsoNormalTable" =
border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"10=
0%" style=3D"width:100%;margin-bottom:5.75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><img border=3D"0" width=
=3D"188" height=3D"12" id=3D"m_163342458542801405gmail-m_343746016944206704=
1gmail-m_8411916321849903678m_-4811443116236749811m_-4293760156557775355Pic=
ture_x0020_2" alt=3D"cid:image002.png@01D35D7D.179A7510"><u></u><u></u></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60pt;padding:0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%"><img border=3D"0" width=3D"66" height=3D"64" id=3D"m_16334245854280=
1405gmail-m_3437460169442067041gmail-m_8411916321849903678m_-48114431162367=
49811m_-4293760156557775355Picture_x0020_3" alt=3D"cid:image003.png@01D35D7=
D.179A7510"><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-h=
eight:105%">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</td>
</tr>
<tr>
<td style=3D"padding:0in">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
7pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)">Conf=
identiality Notice: This e-mail transmission may contain confidential or le=
gally privileged information that is intended
 only for the individual or entity named in the e-mail address. If you are =
not the intended recipient, you are hereby notified that any disclosure, co=
pying, distribution, or reliance upon the contents of this e-mail is strict=
ly prohibited. If you have received
 this e-mail transmission in error, please reply to the sender, so that Sak=
ura Finetek USA, Inc. can arrange for proper delivery, and then please dele=
te the message from your inbox. Thank you.</span><span style=3D"font-size:7=
pt;line-height:105%;font-family:Arial,sans-serif;color:rgb(88,89,91)"><u></=
u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:black"><u></u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:black"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0in 0in 0in 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:windowtext">From:</span></b><span style=3D"font-size:11pt=
;font-family:Calibri,sans-serif;color:windowtext"> Rudolf J Streif [mailto:=
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">rudolf.streif@ibeeto.com</a>]
<br>
<b>Sent:</b> Wednesday, May 15, 2019 01:30 PM<br>
<b>To:</b> Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">GWilson@sakuraus.com</a>&g=
t;; Yocto list discussion &lt;<a href=3D"mailto:yocto@yoctoproject.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">yocto@yoctoproject.org</a>&gt;=
<br>
<b>Subject:</b> Re: [yocto] problem adding a user<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p>Instead of<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>useradd -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>which attempts to add the user and set the password which fails if the u=
ser already exists, use<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>usermod -p `openssl passwd test` sakura<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>which sets the user&#39;s password.<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>:rjs<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:<u></=
u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355divtagdefaultwrapper"=
>
<p><span style=3D"font-family:Calibri,sans-serif">Ok, I had been using the =
useradd class in a couple of other recipes to allow me to copy files to the=
 sakura user directory and another location, but owned by sakura. That seem=
s to have been what was causing the
 problem.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I had been using the extr=
ausers class in my top=C2=A0level image recipe.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><br>
So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?<u></u><u></u></span></p=
>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif"><u></=
u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:Calibri,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 12:31 PM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">=C2=
=A0<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif">The ! for the password in=
 /etc/shadow indicates that the account is disabled:<u></u><u></u></span></=
p>
<p><span style=3D"font-family:Calibri,sans-serif">sakura:!:18031:0:99999:7:=
::<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Either there is something=
 wrong with the password generation or it gets disabled by something else. =
Maybe it&#39;s worth trying with a plain image without Boot2Qt or anything =
else.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">:rjs<u></u><u></u></span>=
</p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">On 5/=
15/19 11:46 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355divtagdefaultwrapper"=
>
<p><span style=3D"font-family:Calibri,sans-serif">Hi Rudolf,<u></u><u></u><=
/span></p>
<p><span style=3D"font-family:Calibri,sans-serif">1st, yes I inherit extrau=
sers. Attached are the passwd &amp; shadow files.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">It shouldn&#39;t make any=
 difference, but I&#39;m building this for an RPi3 using the Qt Boot2Qt ver=
sion of the Yocto environment, distro 2.5.3.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:Calibri,sans-serif">Greg<u></u><u></u></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">=C2=
=A0<u></u><u></u></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif">Hi Greg,<u></u><u></u></s=
pan></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">&gt; I&#39;ve also tried =
both the back-quote and the single-quote, no difference.<u></u><u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Help me to understand thi=
s. the back-quotes are the right ones. If you use the single ones your pass=
word in the /etc/shadow ends up being &#39;openssl passwd test&#39; (withou=
t the quotes), unless the build fails because
 of a parsing error (I have not tried it). Silly question, you did inherit =
extrausers class?<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Can you post your /etc/pa=
sswd and /etc/shadow<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I am surprised that this =
does not work with your setup. I have been doing this a gazillion times alw=
ays with success.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">:rjs<u></u><u></u></span>=
</p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">On 5/=
15/19 11:03 AM, Greg Wilson-Lindberg wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355x_divtagdefaultwrappe=
r">
<p><span style=3D"font-family:Calibri,sans-serif">Hi Rudolf,<u></u><u></u><=
/span></p>
<p><span style=3D"font-family:Calibri,sans-serif">Thanks for the reply, and=
 the information on how openssl works.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I&#39;m trying to create =
a user with the same group name so the code that I&#39;m using reduces to:<=
u></u><u></u></span></p>
<div>
<pre style=3D"background:white">EXTRA_USERS_PARAMS =3D &quot;\<u></u><u></u=
></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 useradd -p `openssl pass=
wd test` sakura; \<u></u><u></u></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 usermod -a -G sudo ${SAK=
URA_USER}; \<u></u><u></u></pre>
<pre style=3D"background:white">=C2=A0=C2=A0=C2=A0 &quot;<u></u><u></u></pr=
e>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">I als=
o, as you can see, removed the macros to eliminate as much confusion as pos=
sible.
<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I still can&#39;t login i=
n using the=C2=A0password=C2=A0&#39;test&#39;.<u></u><u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">I&#39;ve also tried both =
the back-quote and the single-quote, no difference.<u></u><u></u></span></p=
>
<p><span style=3D"font-family:Calibri,sans-serif">Regards,<u></u><u></u></s=
pan></p>
<p><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p><span style=3D"font-family:Calibri,sans-serif">Greg<u></u><u></u></span>=
</p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:Calibri,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"m_163342458542801405gmail-m_3437460169442067041gmail-m_841191632=
1849903678m_-4811443116236749811m_-4293760156557775355x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">
&lt;rudolf.streif@ibeeto.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:Calibri,sans-serif">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif">=C2=
=A0<u></u><u></u></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Calibri,sans-serif">Hi Greg,<br>
<br>
Well, I suppose I wrote the book you are referring to...<br>
<br>
<br>
Using<br>
<br>
useradd -p PASSWORD USER<br>
<br>
takes the password hash for PASSWORD hence the use of openssl in:<br>
<br>
useadd -p `openssl passwd PASSWORD` USER<br>
<br>
openssl password creates the password hash using the original crypt hash <b=
r>
algorithm if no other options are specified. e.g.<br>
<br>
$ openssl passwd hello<br>
6hEsTksgRkeiI<br>
<br>
With this the first two characters of the output is the salt and the <br>
rest is the password hash. If you want openssl to create the same result <b=
r>
again:<br>
<br>
$ openssl passwd -salt &quot;6h&quot; hello<br>
6hEsTksgRkeiI<br>
<br>
You can use newer algorithms like MD5 based BSD password algorithm 1:<br>
<br>
$ openssl passwd -1 hello<br>
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1<br>
<br>
$1 : password algorithm 1<br>
$4Mu8Fcs. : salt<br>
$eIKgPP7RCYrb3lFZjhADA1 : password hash<br>
<br>
<br>
If you log into the system you have to use the clear password. The <br>
system reads the salt, creates the password hash and compares the results.<=
br>
<br>
<br>
:rjs<br>
<br>
<br>
On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:<br>
&gt; I&#39;m trying to use the example in &quot;Embedded Linux Systems with=
 the Yocto Project&quot; to add a user to my Yocto build. In the book the s=
ample code:<br>
&gt;<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0 useradd -p `openssl passwd ${DEV_PASSWORD}` de=
veloper; \<br>
&gt;<br>
&gt; uses openssl to generate the encrypted password string to pass to user=
add. I have never been able to get this to work. When I run the openssl<br>
&gt; command on the cmd line I get a different value every time, this seems=
 wrong, How can the password code compare against it if every encode<br>
&gt; produces a different value?<br>
&gt;<br>
&gt; I am getting the user added to the system, the home directory shows up=
 and the user is in the passwd and group files. I just can&#39;t login to t=
he<br>
&gt; account.<br>
&gt;<br>
&gt; I&#39;ve obviously got something confused, any help would be appreciat=
ed.<br>
&gt;<br>
&gt; Greg Wilson-Lindberg<br>
&gt;=C2=A0=C2=A0 <br>
<br>
-- <br>
-----<br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
+1.855.442.3396 x700<u></u><u></u></span></p>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3396 x700<u></u><u></u></pre>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"m_163342458542801405gmail-m_3437460169442067041gm=
ail_signature">
<div dir=3D"ltr">Rudolf J Streif
<div>CEO/CTO</div>
<div>ibeeto, Streif Enterprises Inc.</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"m_163342458542801405gmail_signature"><div dir=3D"ltr">Rudolf J St=
reif<div>CEO/CTO</div><div>ibeeto, Streif Enterprises Inc.</div></div></div=
>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"color:rgb=
(0,0,0);font-family:Helvetica">Leon Woestenberg</div><div style=3D"color:rg=
b(0,0,0);font-family:Helvetica"><a href=3D"mailto:leon@sidebranch.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">leon@sidebranch.com</a></div><=
div style=3D"color:rgb(0,0,0);font-family:Helvetica"><div>T: +31 40 711 42 =
76</div><div>M: +31 6 472 30 372</div></div><div style=3D"color:rgb(0,0,0);=
font-family:Helvetica"><br></div><div style=3D"color:rgb(0,0,0);font-family=
:Helvetica">Sidebranch</div><div style=3D"color:rgb(0,0,0);font-family:Helv=
etica">Embedded Systems</div><div style=3D"color:rgb(0,0,0);font-family:Hel=
vetica">Eindhoven, The Netherlands</div><a href=3D"http://www.sidebranch.co=
m/" style=3D"color:rgb(17,85,204);font-family:Helvetica" target=3D"_blank">=
http://www.sidebranch.com</a><div><br></div><div><img src=3D"http://www.sid=
ebranch.nl/sites/default/files/images/unnamed.png" style=3D"color:rgb(0,0,0=
);font-family:Helvetica"><br></div><div><br><div><br></div></div></div></di=
v>

--000000000000c83d62058994fb30--
