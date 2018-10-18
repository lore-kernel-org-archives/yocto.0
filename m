Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C858E00994; Thu, 18 Oct 2018 08:46:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.232 listed in list.dnswl.org]
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76958E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 08:46:22 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id DAV3gCPKhvVJ9DAV5gx1e4; Thu, 18 Oct 2018 15:46:16 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: "'Sinan Kaya'" <okaya@kernel.org>,
	"'Stefano Cappa'" <stefano.cappa.ks89@gmail.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<895d95f5-3624-4ec5-80ca-e8fac42ac2d6@kernel.org>
In-Reply-To: <895d95f5-3624-4ec5-80ca-e8fac42ac2d6@kernel.org>
Date: Thu, 18 Oct 2018 08:46:19 -0700
Message-ID: <006901d466f9$b86b0be0$294123a0$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQDpJJoTdLwaadM1FgYaPeZRW297DAFdz6r/Aa/stLwCaYNt+wJ0gYhUAsR3am+mpigcwA==
X-CMAE-Envelope: MS4wfJK4f7ZmwR03PiE2Gew1PM4wizzAkRv5+4G8A84vC2A0iS02pCb4YQWOn4nj/qwmP1uWoBAMnFHEVS9dWSEpyOPGyVRAwVRrrHiNT8Kj9A67DPOQmRx5
	5pav2S/5d5bdEZCWlQnSFK2Doxh+/v3nhrWVgZsYAGFuQaLFkDw2iCkh3Ar5G/7a7IHukde0BwOcvNWrQ2OXmM5IyOJ9FK3IhOSF9eimSb5JoUDaciWAYIpS
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2018 15:46:26 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

You may also need
    PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-standard"
in local.conf. 

-steve

> -----Original Message-----
> From: Sinan Kaya [mailto:okaya@kernel.org]
> Sent: Thursday, October 18, 2018 8:06 AM
> To: sscott@san.rr.com; 'Stefano Cappa' <stefano.cappa.ks89@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [selinux] sumo compilation
> 
> Sorry for confusing names, not enough coffee yet...
> 
> I was trying to say that Steve's suggestion to use
> 
> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
> 
> didn't work on sumo branch.
> 
> On 10/18/2018 10:49 AM, Sinan Kaya wrote:
> > CC'ing the selinux maintainers:
> >
> > I was told that using the master branch and reverting the e2fs change
> > (http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=78e
> > ca8242ea5397c4dc0654d62244453b4260151)
> > works on sumo.
> >
> > Stefano's suggestion unfortunately didn't work.
> >
> > Maybe, it is time to create the sumo branch?
> >
> > On 10/18/2018 9:48 AM, Steve Scott wrote:
> >> I did not try it on sumo.
> >>
> >>
> >> From: Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com]
> >> Sent: Wednesday, October 17, 2018 11:15 PM
> >> To: sscott@san.rr.com
> >> Cc: Sinan Kaya <okaya@kernel.org>; yocto@yoctoproject.org
> >> Subject: Re: [yocto] [selinux] sumo compilation
> >>
> >>
> >> Exactly the same issue since September.
> >>
> >>
> >> Here is my discussion
> >> https://lists.yoctoproject.org/pipermail/yocto/2018-
> September/042711.html.
> >> With that trick did you find a solution also on sumo?
> >>
> >>
> >> Il gio 18 ott 2018, 01:42 <sscott@san.rr.com
> >> <mailto:sscott@san.rr.com> > ha
> >> scritto:
> >>
> >>
> >> It was broken in rocko too. I added this to local.conf to workaround the
> problem:
> >>
> >> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
> >>
> >> -steve
> >>
> >> ---- Sinan Kaya <okaya@kernel.org <mailto:okaya@kernel.org> > wrote:
> >>> Hi,
> >>>
> >>> We realized today that SELinux does not compile on sumo branch.
> >>>
> >>> Is it possible for someone to branch the last working version to a sumo
> branch?
> >>>
> >>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
> >>>
> >>> NOTE: Running task 352 of 2707
> >>> (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fspr
> >>> ogs_1.43.8.bb <http://e2fsprogs_1.43.8.bb> :do_patch)
> >>> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
> >>> NOTE: Running task 1413 of 2707
> >>> (/sources/poky/meta/recipes-
> devtools/e2fsprogs/e2fsprogs_1.43.8.bb:d
> >>> o_patch)
> >>> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
> >>> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt
> >>> --quiltrc Applying patch misc_create_inode.c-label_rootfs.patch
> >>> patching file misc/create_inode.c
> >>> Hunk #1 FAILED at 979.
> >>> Hunk #2 FAILED at 987.
> >>>
> >>> Sinan
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >


