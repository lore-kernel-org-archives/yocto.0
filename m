Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by mx.groups.io with SMTP id smtpd.web10.8250.1592577335870188927
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 07:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: 2net.co.uk, ip: 212.227.17.24, mailfrom: chris@2net.co.uk)
Received: from [192.168.1.177] ([82.8.164.237]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.179]) with ESMTPSA (Nemesis) id
 1MmU5P-1j4Su43tBp-00iS6b for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020
 16:35:33 +0200
Reply-To: chris@2net.co.uk
Subject: Re: [yocto] Distro upgrade strategies
To: yocto@lists.yoctoproject.org
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
From: "csimmonds" <chris@2net.co.uk>
Organization: 2net
Message-ID: <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
Date: Fri, 19 Jun 2020 15:35:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
X-Provags-ID: V03:K1:E+9hEte/0Oloix/oFSWO0UkQe408ZHQIFkTXNCOlQyulwVQ4uV1
 d17FeBTZW0WJwJDAxXSUKv7lzeq0+BTGtwbEZzUeMBklfcMbBONFeYHH+3wDvm3J/olCyUM
 gWD3c9uW/alPVVOUKGosKubcPECmRvjLwmTqlWdV7gESVZ+oo0GBHR9WhSUA4QcW4zrcTMR
 rWDdK03o47VeNoYYNIcOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gHbC48/OeCY=:0wNxTS6pbR1L5f/Ui0B2xJ
 JKnysDcFUYxnPz+TGWm4g7F90oJ7tKlnu13CYN5IiVjVbwGrtqyAm4rDl29k35tDdAA1LWz6x
 OmwgCIBidn3jArrgYpT5RDyCN9Xk5H6oUZR84x7rM3aUcv6h+g7E6p//KsATOAdLaf4cwwuCb
 ylkcWBodTAJvCvfpEQTJyCYKSnaOc3ZiS3bOvPk2SChTZrzqfpXyJ6XspXnScvWKBcO/JLb0K
 OXruBUqX7gonV3jLo9rEkYajkgmRO/SWiGS5TwwWsPctQkmbuv6Abd0T5Zim6qA+UrFDf3Wuj
 3daH8mrodegS9AFID97T3FSwo73QhwIOlmsv7IXfA8IYLuHHZJWqRe7Jgn++M4xE8wVXdNx4R
 sNnmVijUaoSb9E0wx+rzFnhaidd1S98nIi9SU7riizrJPXwoO9R/VMy124GRMQ+8xXeQt9w8B
 Ux+QHyE4Hn50Ryhuu2aJc1lOV4UeDc/Aoxm9nYa9rRfO+Bsnvzf7BiAnw/Oh1dhV/Xf7DjrKN
 OlnTfOXJndPbgApDFf52osZcwFe/kKVFXznzrdGeus+Cu7OiWnJDpNBBdGz8HkoHucR83E0W2
 b56/aNq5FcwGZXqvuQ8Pz8pU36pHs5zKnuJfSNtQvfRkBmKKRSKBvhJFEgnRwZTXfcsK+elb5
 eyXi/J2bQv+fH49fVHVsIEzD66hY7ydLbru0piYZ6iPJjPkW9kjmP53rUu+6F8WQw4xMYGWLM
 9atqgab5IBBZ+cLmw5PQ8WV4O08qwZxTBkhie3montkK7V+0Co9flH7yrwEe4kOkKQb8gbuQF
 0ekhAR6fEDqBa73vvQaSkWtB2qnhK+G9lk02YNoNo8h3jcyeWs=
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

I would like to add that this is a design decision. Package updates, be
they based on rpm, deb, or ipk, are not atomic. Which means that if you
power off during an update the system will usually not boot afterwards.
This is not a problem with servers in data centers with redundant power
supplies and whatever, but it is a problem for an embedded device on the
top of a mountain or at the bottom of the sea. OpenEmbedded/Yocto
Project expect the update will be done by programming a new root
filesystem image. There are several ways to do this, including OTA
solutions like swupdate and mender.io.

HTH,
Chris

On 19/06/2020 15:05, Alexander Kanavin wrote:
> Yocto does not support or test upgrading from one yocto release to the
> next through dnf. Nothing conceptually prevents it, but you need to set
> up and test such upgrades yourself, and send any needed fixes upstream.
> 
> Alex
> 
> On Fri 19. Jun 2020 at 14.16, Hugh Boddington
> <hboddington@orangephotonics.com
> <mailto:hboddington@orangephotonics.com>> wrote:
> 
>     Hello all,
> 
>     I'm struggling conceptually with a recommended upgrade strategy for
>     our distribution (i.e. the resultant distribution on an ARM-based
>     embedded device, not the development SDK itself).  I had initially
>     assumed that a package manager (we're using DNF) could be used to
>     upgrade a distribution from one version to the next, but every time
>     I've used it to try to deploy a large upgrade (e.g.,  Zeus->Dunfell)
>     I've run into problems.  Currently, if I try to use DNF to upgrade
>     from a Zeus-based distribution my DNF installation breaks
>     ("ModuleNotFoundError: No module named 'dnf'") and I can't even shut
>     the device down ("/run/initctl: No such file or directory"). 
>     However, if I install the Dunfell-based distribution from a raw
>     image (without upgrading through Zeus) then everything works fine. 
>     I'm not getting an errors in my build or indication that something
>     went wrong, but obviously something is amiss.
> 
>     Questions:
>       1) Am I missing something?  Is it reasonable to expect that I can
>     upgrade the whole distro using DNF?  I've read the wiki page about
>     System Updates (https://wiki.yoctoproject.org/wiki/System_Update)
>     and DNF (or any other package manager) is not listed - does that
>     imply it's not up to the job?
>       2) If I do continue using DNF, how do I troubleshoot the above
>     issues?  I don't mean specifically those issues, but I want to learn
>     to fish.  Some packages got broken.  Was it caused by the distro I'm
>     upgrading from?  To?  What's the best way of tracing it back?  I
>     tried looking through the various commits but obviously there were a
>     lot of changes made from one distro to another.  The above scenario
>     seems also to be a perfect storm because now that DNF is broken I
>     don't have a mechanism to downgrade anything.
> 
>     I can't help but think that I'm swimming against the current here,
>     or that I've done something fundamentally wrong - I'd appreciate any
>     insight or advice.  Thank you!
> 
>     Hugh
> 
> 
> 
> 


-- 
Chris Simmonds, trainer and consultant at 2net
http://www.2net.co.uk
Author of "Mastering Embedded Linux Programming"
