Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 273CEE007BA; Fri, 14 Nov 2014 12:43:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD91BE005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 12:43:37 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id x19so18666555ier.16
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 12:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zl619C0luwmoi7oNKPANWn9997m+kMJuOb6VtOhiM5g=;
	b=HPxr/+miUKOcnojUHiIx5KXrOd2+As2oCep1DFlHh5TWM2hIiGG6hDxWn2LTbyR0aR
	2iYfomUX1fPeeTnReCvuC5BawEi/QZgRFLP7tBNB3C8ccJ+5hti8YxvuLPiRq86ZnEZo
	5YqtPBmcgwVkXVqw3Vovh3Gg1+/ucap0vnNChnMBrS6YHgrpWLhZ3XuSUzJ+rfi6PfQH
	8hvuXjrEPiZogkd4+/uReBaVgrhRwvlWlxxwFEHTQ4S8aO/8/DbejAfmEqfuzoIodptE
	tZwtBp1H4QqCHg4e3MRoL2oPvv7BStr4mBYL57Y3hbXe4LvTRNR1mvW94sZGezAs6MTA
	pyhA==
MIME-Version: 1.0
X-Received: by 10.107.17.34 with SMTP id z34mr6496193ioi.27.1415997816802;
	Fri, 14 Nov 2014 12:43:36 -0800 (PST)
Received: by 10.50.155.170 with HTTP; Fri, 14 Nov 2014 12:43:36 -0800 (PST)
Date: Fri, 14 Nov 2014 12:43:36 -0800
Message-ID: <CAGMdoF=KRSq2PkV9yLboDSS=B9n+aSB8ievwQEPBaxmBmqYOpg@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Web frameworks on embedded linux
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
X-List-Received-Date: Fri, 14 Nov 2014 20:43:41 -0000
Content-Type: text/plain; charset=UTF-8

> From: Gary Thomas <gary@mlbassoc.com>
> To: yocto@yoctoproject.org
> Date: Fri, 14 Nov 2014 12:04:23 -0700
>
> On 2014-11-14 11:52, Edward Wingate wrote:
>>
>> On Fri, Nov 14, 2014 at 9:39 AM, <yocto-request@yoctoproject.org <mailto:yocto-request@yoctoproject.org>> wrote:
>>
>>     From: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>>
>>     You can always just bring in the packages you need (python-modules is a
>>     pretty heavy hammer!)  Python is split into ~90 separate packages, each
>>     with a [small] set of modules/functionality.
>>
>> I would really like to try this. How do I find out what the various python packages are and what's in each package?  I tried
>> http://layers.openembedded.org/layerindex/branch/master/recipes/, but don't find what I'm looking for (right now, Python's built-in logging and codecs modules).
>
> Try looking in your build tree.  Depending on your target configuration,
> you'll have either RPM or IPK packages and the python modules end up in
> the architecture dependent collection.
>
> It can get a bit tricky to decide which package contains the module(s) you need
> as many of them are grouped together.  If you know the name of the module, you
> can typically find it via a quick search, e.g. to find the package that contains
> the htmllib module:
>   $ find tmp/work/cortexa7hf-vfp-neon-amltd-linux-gnueabi/python/2.7.3-r0.3/packages-split/ -name htmllib.py
>   tmp/work/cortexa7hf-vfp-neon-amltd-linux-gnueabi/python/2.7.3-r0.3/packages-split/python-html/usr/lib/python2.7/htmllib.py
> so, in this case I'm looking for the 'python-html' package.
>
> Once you determine the package name, just add that to your image (or if you
> have things set up for package updates, you can just add the packages directly
> on your board).

Thanks so much Gary!  I pulled in just logging and codecs modules and
my image went from 22 MB down to 9MB, and the app is still working.
I'm hopeful I can keep the ramdisk image under 16MB now.

Moving on to install and configure flask and uwsgi to serve the app
now.  Speaking of which, how do you assign static IP instead
defaulting to DHCP, and get ssh keys into the rootfs instead of
Drpbear generating them every bootup?  Can this be accomplished
through Yocto or do you have to mount and modify the rootfs manually?

