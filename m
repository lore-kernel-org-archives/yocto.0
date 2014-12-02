Return-Path: <yuchankit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D74E008C6; Tue,  2 Dec 2014 00:12:38 -0800 (PST)
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
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA74CE00860
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 00:12:34 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id n3so20024580wiv.7
	for <yocto@yoctoproject.org>; Tue, 02 Dec 2014 00:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lcIuFdwPQyMJ0VSJ1+uKwfR3lMRJe19aF2iVdHt+f24=;
	b=TYf3S3kWYcKtbMQo12KRdDbfIVXrDJUdLn3ZJLIXsqDYFFUh9C4npPCxbuWJmkxrMV
	7QZ8SVwmr4ERBMb194rlJaiAar9CkDtQDsbENV7CDGvQSUxWOtydZZrVUDvDczXX4eHK
	khdf/dzbxh9sy6XjBFPDBGl8jUBeXexc/twPwVWqI3mfgRrLBbiTInjP+7thdqyGE8vv
	smN8R1Hz19Sre7KY3dWTUh8Sc+8wsJ4t5jTPaF3qiKlJytAsqgizF8U1B/+I73h0AzxS
	JFrlEmflz1g/J1j7Od56bS9n497UBamoZy+XOsp31buTLBCr9JVlNNhL6V3zRg2pJ1gF
	1s+g==
MIME-Version: 1.0
X-Received: by 10.180.211.196 with SMTP id ne4mr54211099wic.71.1417507953921; 
	Tue, 02 Dec 2014 00:12:33 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Tue, 2 Dec 2014 00:12:33 -0800 (PST)
In-Reply-To: <CANusJLPqpv-ZFxewBNH1-f028MdgmzgcfPsgry1=Ag0tajV=aQ@mail.gmail.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
	<CANyK_8dXPEHPYDYXdpggbn7LQ879dwT0Z6v0k_aF+sOE71krjQ@mail.gmail.com>
	<CANusJLOstxQyp+feBLSbnSAqHhBCTGu=DDGQ2BtJ=Rotu1ZYeg@mail.gmail.com>
	<CANusJLPqpv-ZFxewBNH1-f028MdgmzgcfPsgry1=Ag0tajV=aQ@mail.gmail.com>
Date: Tue, 2 Dec 2014 16:12:33 +0800
Message-ID: <CANusJLPYuz1ScP0BPyH=gQ2tt9th5x5ScDsYuuV4qt=L=naeig@mail.gmail.com>
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
X-List-Received-Date: Tue, 02 Dec 2014 08:12:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

For 2. , I also have the same issue with gstreamer1.0-plugins good.
Although the image does include some plugins, I noticed that the image
doesn't have complete plugins under gstreamer1.0-plugins-good unless I
manually installed all the packages gstreamer1.0-plugins-good* under
tmp/deploy/rpm/corei7_64 directory.

On Mon, Dec 1, 2014 at 10:19 AM, Chan Kit Yu <yuchankit@gmail.com> wrote:
> Hi Paul,
>
> Your approach worked and I thank you for that.
>
> However I have some more unrelated questions (if you don't mind):
>
> 1. I noticed some mainstream Python modules that are supposed to come
> with default Python installation are not present. I take the example
> of sqlite3 module not present in default Python 2.7.3 installation. I
> need to include python-sqlite3 in local.conf before I got that baked
> inside the image. So my question is how can I check what modules are
> installed (aside from doing smart search command) by a default Python
> 2 installation. I baked my image using core-image-sato-sdk command.
> 2. I found out that the startx command tries to start xfce by default
> (judging from xfce* error that I got) and therefore fails since I
> don't have xfce installed. So how do I configure startx to start other
> desktop environment in Yocto? Also, the startx command does not seem
> to go to init 5 (I configured mine to start in init 3) and therefore
> fails if I don't type init 5 command before it starts. And if I put
> init 5 command, it jumps straight to the matchbox desktop. I did some
> forensics on the init command and I only need to modify ~/.Xsession
> file in order to change what DE init 5 would start. TL:DR : Is init 5
> the canonical way to start an X desktop instead of startx ?
>
>
> Thanks again,
> Chan Kit
>
>
>
>
>
> On Fri, Nov 28, 2014 at 7:33 PM, Chan Kit Yu <yuchankit@gmail.com> wrote:
>> Thanks for saving me from myself. I will try it out and let you know my
>> results
>>
>> On Nov 28, 2014 7:22 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>>>
>>> On 27 November 2014 at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
>>> > Hi all,
>>> >
>>> > I'm not sure if emailing this is the most appropriate way and I
>>> > apologize in advance if that's not.
>>> >
>>> > I have some scripts that require /usr/local to exist in Yocto and
>>> > therefore I need to a recipe to create /usr/local directory. I tried
>>> > to accomplish this with a simple recipe but that proved futile.
>>> >
>>> > Although bitbaking that particular recipe was fine, trying to include
>>> > that package in local.conf resulted errors and those errors are
>>> > gibberish (it listed all the packages inside the image that I was
>>> > trying to comple) . Here's my simple stupid recipe:
>>> >
>>> > SUMMARY= "...."
>>> > LICENSE = "something...."
>>> > ...
>>> > ...
>>> > INSANE_SKIP_${PN} = "installed-vs-shipped"
>>>
>>> This line is hiding the warning that a file has been installed (copied
>>> into ${D} by your do_install function) but not shipped (which means
>>> placed in an actual package).
>>>
>>> /usr/local isn't usually populated so isn't included in a package by
>>> default, you can modify FILES_xxx to change what is included in the
>>> package 'xxx'. In a recipe the main package name (which is based off
>>> the recipe file name), is stored in ${PN}.
>>>
>>> So basically, you need to add something like:
>>>     FILES_${PN} += "/usr/local"
>>>
>>> Also, you should never need to use INSANE_SKIP unless you're doing
>>> something that is actually insane. Those warnings are there for a
>>> reason!
>>>
>>> >
>>> > do_install(){
>>> >      mkdir -p ${D}/usr/local
>>> > }
>>> >
>>> > Is there a better way (or preferably the canonical way) to do this?
>>> >
>>> > Thanks,
>>> > Chan Kit
>>>
>>> Cheers,
>>>
>>> --
>>> Paul Barker
>>>
>>> Email: paul@paulbarker.me.uk
>>> http://www.paulbarker.me.uk

