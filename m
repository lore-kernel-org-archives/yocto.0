Return-Path: <yuchankit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A382BE0091D; Sun, 30 Nov 2014 18:19:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuchankit[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51BB2E00837
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 18:19:42 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id l18so13000171wgh.16
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 18:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0O5stV1lsI+M0U6rjIw6NH9z+uKm0nE4ojb/umUGDco=;
	b=gn6OKtbPaDltAWr2C9Sxi7l1TAW2PeOrOOkwXfBj89cZHaYv2Z6VxUPGk4xFIsKbIc
	ezhSHUt+gdTp9sUL6NuGbM5Atc4mncz81ZXMyGK3pFQQ0mqXYfWHOfe/a+CS+zsf1IpC
	xx0c3DPPPnifnWGSOjvBnWRJbmQ0SW/VxeRVuz7SnfTIXPNSphM5nnh0VOXTT88MSD/D
	sv8DVtjdhl6hjB6YpJRKOq0DG7DDM+pYa8P7aK1g4lmNDKkTZA48swtiOpk7i99nnjGS
	A/suL8768mivmKIzJOy5qNBoTj4VqnA+tOUP+5rawf4bRk7xQQ2VxZRDwixPl+jxIEtK
	JI/w==
MIME-Version: 1.0
X-Received: by 10.194.134.234 with SMTP id pn10mr91559431wjb.34.1417400381087; 
	Sun, 30 Nov 2014 18:19:41 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Sun, 30 Nov 2014 18:19:41 -0800 (PST)
In-Reply-To: <CANusJLOstxQyp+feBLSbnSAqHhBCTGu=DDGQ2BtJ=Rotu1ZYeg@mail.gmail.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
	<CANyK_8dXPEHPYDYXdpggbn7LQ879dwT0Z6v0k_aF+sOE71krjQ@mail.gmail.com>
	<CANusJLOstxQyp+feBLSbnSAqHhBCTGu=DDGQ2BtJ=Rotu1ZYeg@mail.gmail.com>
Date: Mon, 1 Dec 2014 10:19:41 +0800
Message-ID: <CANusJLPqpv-ZFxewBNH1-f028MdgmzgcfPsgry1=Ag0tajV=aQ@mail.gmail.com>
From: Chan Kit Yu <yuchankit@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Mon, 01 Dec 2014 02:19:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

Your approach worked and I thank you for that.

However I have some more unrelated questions (if you don't mind):

1. I noticed some mainstream Python modules that are supposed to come
with default Python installation are not present. I take the example
of sqlite3 module not present in default Python 2.7.3 installation. I
need to include python-sqlite3 in local.conf before I got that baked
inside the image. So my question is how can I check what modules are
installed (aside from doing smart search command) by a default Python
2 installation. I baked my image using core-image-sato-sdk command.
2. I found out that the startx command tries to start xfce by default
(judging from xfce* error that I got) and therefore fails since I
don't have xfce installed. So how do I configure startx to start other
desktop environment in Yocto? Also, the startx command does not seem
to go to init 5 (I configured mine to start in init 3) and therefore
fails if I don't type init 5 command before it starts. And if I put
init 5 command, it jumps straight to the matchbox desktop. I did some
forensics on the init command and I only need to modify ~/.Xsession
file in order to change what DE init 5 would start. TL:DR : Is init 5
the canonical way to start an X desktop instead of startx ?


Thanks again,
Chan Kit





On Fri, Nov 28, 2014 at 7:33 PM, Chan Kit Yu <yuchankit@gmail.com> wrote:
> Thanks for saving me from myself. I will try it out and let you know my
> results
>
> On Nov 28, 2014 7:22 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>>
>> On 27 November 2014 at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
>> > Hi all,
>> >
>> > I'm not sure if emailing this is the most appropriate way and I
>> > apologize in advance if that's not.
>> >
>> > I have some scripts that require /usr/local to exist in Yocto and
>> > therefore I need to a recipe to create /usr/local directory. I tried
>> > to accomplish this with a simple recipe but that proved futile.
>> >
>> > Although bitbaking that particular recipe was fine, trying to include
>> > that package in local.conf resulted errors and those errors are
>> > gibberish (it listed all the packages inside the image that I was
>> > trying to comple) . Here's my simple stupid recipe:
>> >
>> > SUMMARY= "...."
>> > LICENSE = "something...."
>> > ...
>> > ...
>> > INSANE_SKIP_${PN} = "installed-vs-shipped"
>>
>> This line is hiding the warning that a file has been installed (copied
>> into ${D} by your do_install function) but not shipped (which means
>> placed in an actual package).
>>
>> /usr/local isn't usually populated so isn't included in a package by
>> default, you can modify FILES_xxx to change what is included in the
>> package 'xxx'. In a recipe the main package name (which is based off
>> the recipe file name), is stored in ${PN}.
>>
>> So basically, you need to add something like:
>>     FILES_${PN} += "/usr/local"
>>
>> Also, you should never need to use INSANE_SKIP unless you're doing
>> something that is actually insane. Those warnings are there for a
>> reason!
>>
>> >
>> > do_install(){
>> >      mkdir -p ${D}/usr/local
>> > }
>> >
>> > Is there a better way (or preferably the canonical way) to do this?
>> >
>> > Thanks,
>> > Chan Kit
>>
>> Cheers,
>>
>> --
>> Paul Barker
>>
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk

