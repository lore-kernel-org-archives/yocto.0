Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4540EE00E06; Tue, 16 Aug 2016 22:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94DB9E00DFF
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 22:18:14 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id F2CFC68A01C; Wed, 17 Aug 2016 06:18:12 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id CB75A68A019;
	Wed, 17 Aug 2016 06:18:09 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7EA5A674041F;
	Wed, 17 Aug 2016 07:18:09 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
	<07E2CC82-5296-4ED3-8F74-E213EC509F4D@gmail.com>
	<alpine.LFD.2.20.1608161237490.11037@ca624034.mitel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <3090aa77-4d98-46e0-53fa-b4ba6183e29b@mlbassoc.com>
Date: Wed, 17 Aug 2016 07:18:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1608161237490.11037@ca624034.mitel.com>
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Wed, 17 Aug 2016 05:18:18 -0000
X-Groupsio-MsgNum: 31519
Content-Type: multipart/mixed; boundary="------------8C51D64D303E674BE16034D3"

--------------8C51D64D303E674BE16034D3
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-16 18:38, Robert P. J. Day wrote:
> On Tue, 16 Aug 2016, Khem Raj wrote:
>
>>> On Aug 16, 2016, at 8:37 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>>
>>> On Tue, 16 Aug 2016, Patrick Doyle wrote:
>>>
>>>> As I am playing with several different Yocto/OE projects, I thought
>>>> it would be nice to set up a global downloads directory.
>>>>
>>>> Also, being a somewhat forgetful sort, I thought it would be nice if
>>>> I could set DL_DIR in my .bashrc and not have to remember to edit
>>>> conf/local.conf each time I follow the directions from a third party
>>>> site to set up their Yocto based distribution.
>>>>
>>>> Can I do this?  If so, how?
>>>
>>>  if you're talking about creating a local source mirror for tarballs
>>> to be shared across multiple projects, i taught an OE/YP course last
>>> week based on a digi ConnectCore 6 dev kit, and i wrote some wiki
>>> pages for it, including this one:
>>>
>>> http://www.crashcourse.ca/wiki/index.php/CC6_local_source_mirror
>>
>> a small nit, perhaps its better to use rsync instead of cp.
>
>   good point, i will adjust that later. anything else i overlooked?

I use the attached script to manage my download mirror.  There are
two differences with the one Robert proposed:

* It copies all files, regardless of name.  This is important if you
   want your download mirror to be useful in a no-network environment
   (which seems to be very important to some of my larger customers)
   I normally run my builds with BB_NO_NETWORK="1" which lets me know
   immediately if my download mirror needs updating.  I disable BB_NO_NETWORK
   to download the new images, then update the mirror and turn it back
   on again.
* Once uploaded to the mirror, files are replaced by symbolic links
   just as if the file had been present in the first place.  This has
   two benefits - the downloads directory stays as small as possible
   and the next time the 'save_downloads' script runs, it won't have
   to bother with files already uploaded.  I use this process on a
   number of build machines, some with Poky/Yocto build trees that have
   been around for a long time (sometimes years) and keeping all those
   old files in 'downloads' can really add up.

However you manage it, using 'own-mirrors' with a local mirror really
improves the speed of builds - think about having to re-download the
git tree for the RaspberryPi firmware (>3.5GB) for every new build!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------8C51D64D303E674BE16034D3
Content-Type: text/plain; charset=UTF-8;
 name="save_downloads"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="save_downloads"

#! /bin/bash

MIRROR=/work/misc/Poky/sources

cd downloads
find . -maxdepth 1 -type f | sed -e 's;^\./;;' | grep -v '.lock$' | grep -v '.done$' >/tmp/files.$$
LEN=`ls -l /tmp/files.$$ | awk '{print $5}'`
if [ "${LEN}" == "0" ]; then
    exit 0
fi
rsync -auv --files-from=/tmp/files.$$ . ${MIRROR}
if [ $? == 0 ]; then
    read -p "Upload successful - purge files(y/n)? " PURGE
    if [ "${PURGE}" == "y" ]; then
	xargs -n1 -t rm </tmp/files.$$
	xargs -n1 -t -I\{} ln -s ${MIRROR}/\{} . </tmp/files.$$
    fi
fi


--------------8C51D64D303E674BE16034D3--
