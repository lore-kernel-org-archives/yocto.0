Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 245C5E0131E
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:25:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2QJPcKk011539
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:25:38 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 26 Mar 2013 12:25:38 -0700
Message-ID: <5151F62F.7050403@windriver.com>
Date: Tue, 26 Mar 2013 14:25:35 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130307 Thunderbird/17.0.4
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <8D433CD511BE4646B47F8B31C900818E0CB1C53C@kndmex01.barco.com>
	<1755052.MPJKo0IPHY@helios>
In-Reply-To: <1755052.MPJKo0IPHY@helios>
Subject: Re: Shared DL_DIR with other users
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
X-List-Received-Date: Tue, 26 Mar 2013 19:25:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/26/13 9:25 AM, Paul Eggleton wrote:
> Hi Simon,
>
> On Tuesday 26 March 2013 14:37:36 Vanveerdeghem, Simon wrote:
>> We are using Yocto with a couple of users, to prevent that our build
>> server has duplicates of downloads, we share the DL_DIR.
>>
>> But we have problems with permissions. When a user run yocto, it will
>> checkout sources, or download tar files with permissions 644 with the
>> username of the user who is running yocto.
>>
>> When another user will do a cleanall of a bitbake recipe, yocto will
>> remove the tarball and the svn workingcopy, but because the permissions
>> aren't 777 It cannot remove all the files (yocto doesn't throw an error
>> here).
>>
>> When that other user will do a fetch of thqt recipe, yocto will checkout
>> the svn directory, it will leave as good as clean because it says
>> internally "Skipped ." (yocto doesn't throw an error here) then it wil
>> take a tarball of it, again the tarball has only a directory named of
>> the checked out module, but have no sources. (yocto doesn't throw an
>> error here)
>>
>> When yocto will building the sources it will fail because the tar was
>> clean, and there is nothing to build.
>>
>> The rootcause of this problem is that the shared download directory only
>> use 644. (We can workaround this with the .profile (we can set in the
>> .profile a standard permission mask, but then you always use that mask,
>> something we don't want)
>
> It's likely that sharing DL_DIR directly between multiple users is not a
> heavily tested scenario. One way around it which is fairly widely used
> though is to set up a local mirror shared by all of the build machines
> and keep DL_DIR separate on each machine. There is some information on
> how to do that here:
>
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F

This is how we do it.  We have one user who routinely does a fetchall against 
the trees and populates the mirror.  Then the users have a layer which adds:

PREMIRRORS_append = "\
      git://.*/.* file://path/ \n \
      svn://.*/.* file://path/ \n \
      ftp://.*/.* file://path/ \n \
      http://.*/.* file://path/ \n \
      https://.*/.* file://path/ \n \
"

--Mark

> Cheers,
> Paul
>


