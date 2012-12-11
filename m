Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2C366E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 12:34:44 -0800 (PST)
Received: (qmail 32464 invoked by uid 1003); 11 Dec 2012 20:34:43 -0000
Received: from unknown (HELO ?192.168.1.105?)
	(philip@opensdr.com@96.240.164.36)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	11 Dec 2012 20:34:43 -0000
Message-ID: <50C798E2.9050903@balister.org>
Date: Tue, 11 Dec 2012 15:34:42 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CALq3SOH+1wwBgskaNO0dpoMQis1FoWVuFzWmJ=0r4vpRAjy2Sg@mail.gmail.com>
	<2119845.UNQndSV9LY@helios>
In-Reply-To: <2119845.UNQndSV9LY@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Boot failure when adding the meta-oe layer
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
X-List-Received-Date: Tue, 11 Dec 2012 20:34:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2012 01:11 PM, Paul Eggleton wrote:
> On Tuesday 11 December 2012 12:54:57 Zach Tibbitts wrote:
>> I'm working on an embedded Linux platform for work to run an app that's
>> written with Gtk+3. The hardware in question is a Sandy Bridge Core i3
>> platform. With a vanilla Yocto build, I can boot an image just fine (I've
>> tested with core-image-basic, core-image-minimal, and core-image-x11) and
>> everything seems to work; I can even install it to the internal drive
>> without issue.
>>
>> I found recipes for Gtk+3, as well as some of our other dependencies in the
>> meta-oe layer from the meta-openembedded repository. However, just adding
>> these layers and rebuilding any of the images that I've built (without
>> actually adding any new recipes) cause the image to hang when run on
>> hardware (but oddly enough not in QEMU).
>>
>> The last line printed before the bootup apparently stops is along the lines
>> of: "sd 4:0:0:0: [sdb] Attached SCSI removable disk", and the line that
>> seems most at fault is a little farther up, "/init: line 69: udevd: not
>> found". If needed, I can try to capture more of the output, maybe with a
>> camera, I'm not sure of an easy way to pastebin the output from hardware...
>>
>> What I'm wondering is if this is a known issue, or if meta-openembedded
>> isn't meant to be used in conjunction with Yocto. My assumption is that
>> something from meta-oe is superceeding a recipe in Yocto and causing this
>> failure.
>
> This is a known issue in meta-oe unfortunately; the udev version there
> apparently does not work outside of use with systemd. I believe the plan is to
> drop udev from meta-oe fairly soon.

Is this recent? I've been running oe-core + meta-oe without meta-systemd 
and don't think I've seen this. I haven't updated in a couple of weeks 
though.

Philip

>
> The workaround is to force the system to use the version of udev in meta/ -
> I'm guessing you are using the 1.3 release version, in which case you can add
> the following to your local.conf:
>
> PREFERRED_VERSION_udev = "164"
>
> Cheers,
> Paul
>

