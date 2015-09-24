Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60CC4E00BBC; Thu, 24 Sep 2015 06:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.158 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0158.hostedemail.com
	[216.40.44.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4586FE0055C
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 06:59:26 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 6FD2BC2142;
	Thu, 24 Sep 2015 13:59:25 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: berry54_17f7a09fb9f54
X-Filterd-Recvd-Size: 2578
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Thu, 24 Sep 2015 13:59:24 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Daniel.'" <danielhilst@gmail.com>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAF3SDA7SE==bdZO45njNYnbtViyJ1JTH+AKofNM3+brKdW2iAA@mail.gmail.com>
In-Reply-To: <CAF3SDA7SE==bdZO45njNYnbtViyJ1JTH+AKofNM3+brKdW2iAA@mail.gmail.com>
Date: Thu, 24 Sep 2015 14:59:21 +0100
Organization: SDC Systems Limited
Message-ID: <004801d0f6d1$36f889c0$a4e99d40$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdD2zzdJzSflZEj1R++fbjh1zpPbaAAAWOag
Cc: yocto@yoctoproject.org
Subject: Re: Setting root password
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 13:59:28 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Hi Daniel,

> I didn't know about this EXTRA_USERS_PARAMS. What I do is adding this =
function to
> my image.=20
> # This function sets the password for root based on ROOT_PASSWD =
variable
> set_root_password () {
>         local p=3D$(openssl passwd -1 -salt "My salt" =
"${ROOT_PASSWD}")
>        sed -e "s/root:[^:]*:/root:${p}:/" -i =
${IMAGE_ROOTFS}/etc/shadow
> }
> And append it to ROOTFS_POSTPROCESS_COMMAND:
> ROOTFS_POSTPROCESS_COMMAND +=3D "set_root_password; "
> I did all this in a class file which I import on all my images,=20

As your method works and the EXTRA_USERS_PARAMS appears not to be doing =
could you send me your class file to save me having to reinvent the =
wheel?

> About your problem, can you get the "usermod" error from log.do_rootfs =


The end of the log.do_roots file just contains the following:

NOTE: Executing set_user_group ...
DEBUG: Executing shell function set_user_group
NOTE: Performing usermod with [-R =
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initram=
fs/1.0-r0/rootfs -P Hkw6rBJlcfhvM root] and 1 times of retry
Server refused shutdown.  Remaining client fds: 2
Client pids: 3878 16245
Server will shut down after all clients exit.
WARNING: usermod command did not succeed. Retrying...
ERROR: Tried running usermod command 1 times without success, giving up
WARNING: =
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initram=
fs/1.0-r0/temp/run.set_user_group.3878:1 exit 1 from
  exit 1
DEBUG: Python function do_rootfs finished

Thanks,

Andy.


