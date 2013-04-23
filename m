Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 612A3E014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 10:31:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 100FAF811E2; Tue, 23 Apr 2013 11:31:36 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D9FC1F811E2;
	Tue, 23 Apr 2013 11:31:34 -0600 (MDT)
Message-ID: <5176C582.3030508@mlbassoc.com>
Date: Tue, 23 Apr 2013 11:31:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <5175C32D.8030304@mlbassoc.com> <517663D3.9090300@mlbassoc.com>
In-Reply-To: <517663D3.9090300@mlbassoc.com>
Subject: Re: udev breakage
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
X-List-Received-Date: Tue, 23 Apr 2013 17:31:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-23 04:34, Gary Thomas wrote:
> On 2013-04-22 17:09, Gary Thomas wrote:
>> I've found that Poky/Yocto images built after this commit have
>> a broken udev:
>>
>> commit c71d1f446c734954dceba0666c4f074047864b87
>> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>> Date:   Wed Apr 17 14:53:21 2013 +0000
>>
>>      udev: Effectively revert the move to /sbin
>>
>>      This effectively reverts the changes made in b49ddeb11c0319b7ece278fd7cef6b0223114ca9
>>      to move udev's libexecdir to sbin. The changes caused too many issues in
>>      other places and were not well enough tested this close to a release.
>>
>>      Rather than use base_libdir, the nonarch version is used to try and give some
>>      chance of multilib not being totally broken in the release.
>>
>>      (From OE-Core rev: c50e50fdafad378d75b7b74259a3d55ca0fe3d18)
>>
>>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>
>> Prior to this commit, the X server finds my input devices and works
>> perfectly.  After this commit, something breaks and X can't find any
>> keyboard/mouse/touch.
>>
>> It seems like the path '/sbin/udev' has crept in some way that the
>> recipe configuration does not affect.  After the failing commit, all
>> of the udev files should be in ${nonarch_base_libdir}, not /sbin.
>> However, that doesn't seem to be the case in libudev
>>
>> root@sabrelite:~# strings /lib/libudev.so.0 | grep /udev
>> /etc/udev/udev.conf
>> /run/udev
>> /sbin/udev/rules.d
>> /etc/udev/rules.d
>>
>> I believe that this is why X is failing since it uses libudev to
>> search for devices.
>>
>> I've not found where/how this mixup is happening, perhaps someone more
>> familiar with the udev code can spot it quickly.
>
>
> Somehow this misconfiguration ended up in a number of the executable
> programs in the udev package:
>
> ******* /usr/bin/udevadm
> /sbin/udev/ /sbin/udev/rules.d
> ******* /lib/libudev.so.0.13.1
> /sbin/udev/rules.d
> ******* /lib/udev/ata_id
> /sbin/udev/rules.d
> ******* /lib/udev/collect
> /sbin/udev/rules.d
> ******* /lib/udev/accelerometer
> /sbin/udev/rules.d
> ******* /lib/udev/cdrom_id
> /sbin/udev/rules.d
> ******* /lib/udev/udevd
> /sbin/udev/ /sbin/udev/devices /sbin/udev/rules.d
> ******* /lib/udev/scsi_id
> /sbin/udev/rules.d
> ******* /lib/udev/keymap
> /sbin/udev/keymaps/
>
>
> Just to see if this is the problem, I added a symlink
>    # ln -s ${nonarch_base_libdir}/udev /sbin
> and X now works (after a reboot)
>

Continuing research on this shows that all of the above was a
[long] journey down a twisty rabbit hole :-(

There does seem to be a problem with rebuilds and repository updates,
at least for this recipe.  Here's what I found:

* Build clean udev using a repo that precedes the revision mentioned above.
   % git checkout c71d1f~1
   % bitbake udev -c cleansstate;bitbake udev
   % strings tmp/work/arm*/udev/*/image/usr/bin/udevadm | grep sbin
   /sbin/udev/
   /sbin/udev/rules.d

* Now update the repo to the bad revision (or later) and rebuild without
   cleaning udev tree, just like you would if you update the repo and just
   do an incremental build
   % git checkout c71d1f
   % bitbake udev
   % strings tmp/work/arm*/udev/*/image/usr/bin/udevadm | grep sbin
   /sbin/udev/
   /sbin/udev/rules.d

* No change to repo, just rebuild clean
   % bitbake udev -c cleansstate;bitbake udev
   % strings tmp/work/arm*/udev/*/image/usr/bin/udevadm | grep sbin
   ... none

Oops!  I wonder how many other packages/recipes suffer from this?  I try
to not rebuild from scratch when possible (since it takes many hours) and
rely on bitbake to make sure the right things happen.  Sadly in this case
something isn't working properly.

The actual log of my experiment is at http://www.mlbassoc.com/poky/build_udev.log

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

