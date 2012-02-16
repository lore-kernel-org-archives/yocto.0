Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3668AE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 15:02:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1GN2idP000172
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Feb 2012 15:02:44 -0800 (PST)
Received: from [147.11.117.55] (147.11.117.55) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Feb 2012 15:02:44 -0800
Message-ID: <4F3D8AFD.6080307@windriver.com>
Date: Thu, 16 Feb 2012 18:02:21 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com>
In-Reply-To: <4F3D883C.8070709@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 23:02:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-16 05:50 PM, Hollis Blanchard wrote:
> On 02/16/2012 02:11 PM, Bruce Ashfield wrote:
>> On 12-02-16 03:16 PM, Hollis Blanchard wrote:
>>> I'm trying to figure out how to use a cloned/modified copy of the
>>> linux-yocto-3.0 git repository. Here's what I did:
>>>
>>> * cloned linux-yocto-3.0.git and committed to the meta branch
>>> * specified my new repo:
>>
>> Very strange. Is this from the yocto master branch ?
>
> I ran this:
>
>     git clone git://git.yoctoproject.org/linux-yocto-3.0
>     git checkout -t origin/meta -b meta
>     vim
>     git commit
>
>
> [snip]
>> That being said. If you go into your src tree. Do you see the meta and
>> board branch ? Are they local branches ? Is your SRC_URI pointing at a
>> bare clone, and not a non-bare one ?
>
> As you can tell from my clone command above, it is a non-bare clone
> (though I have no idea what that actually means). I have lots of
> branches, but aside from master only my new "meta" branch is local:

That's the problem. I have a patch that detects this and abort is a non
bare upstream is used. I just need to send them .. which I'll do when
I get back to my desk next week.

There are two reason for this bare clone requirement:

   - technical: this scales to several hundred branches. cloning, and 
iterating
     remote branches to create local tracking branches is noisy and
     time consuming. So there's a trick that has been in use for years
     that you can clone a bare upstream, and mass convert the branches
     to local in a single operation.

   - social: you want to do your development in a different tree from the
     one that is being cloned and used. That way the tree is clean, and you
     are building what you expect.

This was supposed to be added to the new documentation (in the smaller,
lightened versions) .. but I don't think that is out yet.

Cheers,

Bruce

>
> -bash-3.2$ git branch -a
>    master
> * meta
>    origin/HEAD
>    origin/master
>    origin/meta
>    origin/yocto/base
>    origin/yocto/eg20t
>    origin/yocto/emgd
>    origin/yocto/emgd-1.10
>    origin/yocto/gma500
>    origin/yocto/standard/arm-versatile-926ejs
>    origin/yocto/standard/base
>    origin/yocto/standard/beagleboard
>    [...]
>
>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>
>

