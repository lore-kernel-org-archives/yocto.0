Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99F64E00B58; Sat, 24 Oct 2015 11:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.134 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1954 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Oct 2015 11:25:58 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0134.outbound.protection.outlook.com [157.56.110.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04730E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 11:25:58 -0700 (PDT)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [192.168.1.76] (23.119.29.149) by
	BLUPR04MB838.namprd04.prod.outlook.com (10.255.188.150) with Microsoft
	SMTP Server (TLS) id 15.1.306.13; Sat, 24 Oct 2015 17:53:21 +0000
To: "Ahsan, Noor" <Noor_Ahsan@mentor.com>, Christopher Larson
	<clarson@kergoth.com>, Paul Barker <paul@paulbarker.me.uk>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <562BC58D.4090600@ni.com>
Date: Sat, 24 Oct 2015 12:53:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
X-Originating-IP: [23.119.29.149]
X-ClientProxiedBy: BLUPR08CA0069.namprd08.prod.outlook.com (10.141.200.49) To
	BLUPR04MB838.namprd04.prod.outlook.com (10.255.188.150)
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB838;
	2:dsAf8dxqL5bh8mUCicrvaxuj1PC4amZyZyZVVyQZ27su0M8N+C4bcKyoJtWkSanjboSVrfgiO+Z078litEsDfXKaBNxZCyCaYBcKq+czKbKqSAdVHS3zuVCW6VLzkef4A8yDVtou+DjMFE3TlcaK9+D8V9n+DT9WTnzlS412dIw=;
	3:yu1eYrd+VZBM/sGqP5+Q2GzqYdhAombknv6kDb8/Y5oq2Ga6Td5wLOIjj163OOsJoJddpGzatCbG/qqTjUXU1k1UmXtQWGgZ+cJQ26YA1B9vgmSShMCF2F5xhlmebpZgdJDn2h/pdXXIMidr3Yl9LQ==;
	25:Fg58KZSo5MjdtNixvJrKqpL81Q/96gy+77CuzMiDHshGxdVvsN2A0duZ1VELVAsibjLoc9I/wSw4zRWVtivuUvMAHpuyxG96c2z4m1eoHWGPaxUpa6Nt7hiiFIlyj7h+Xf4WB+H1B0NXebTxeYZI0U8M1CafSq2ugkE1fEr0HPWUr99k+ft0wqzaCrd1dRjpbSEor4rduFQtY8Zx5qjyyxn5oYOq+pptdM9769w7iBBxFGDyMMam1XqpS+ymvYhLxtQ59D/5H9RSHrMudaWSpg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR04MB838;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB838;
	20:VCGiO4FGGg5XUaaPN4PrvHnvtgrgUPI5EUefx76Ruz2Giz/25aTiLlHqzMj1hOYjnM5hQqK/IA80fFnqySl529d70jpY5T/QuaLiCKJouLxpNqgVmH1L0zUgmRdQDk3f41xuxa9be4b1v7JeBhH9/5y5g6tXVtnRPkqL8SxhKcpaf5PxfDikj0+zGIm3VWrs+E8LQgJStWTtv6m+cihGtG5OaTHDHIWNt4ujyyK+NTXfMmnWO9DT3l4ns7ynExkLjKKxFONJ/USJXq3go0OYesPUu9d0OK6MUkzHTvf8sExUUeGPjc5cz8YIe2MT5VS7gNurPBu4on3TOhX3ONw3c93gNLUE4278wRGgrMt9mf6sAJOo9r8HB78SdzciiH0yO4TzjXmj66EynT1trNFx7H9jsb7COB+aEa/nYcVf/l0jftMQZR6SjjnfEEkRV85BzHS3k81nKCPiL3x5sfLlBV62Y/E1HXEks5GUxKgteJGePIIH3YXCDxKcCZOvwPZ9MZeJJtUu4tlfBKS+LyBJIEAaccGWKr+Mqa1sYv1tlnWmgYDsGKxUrgJxKnNrPKU7bggjUkZGpePOxRF9idSP0OqrToZXAy3k+UkJr2WvFOo=
X-Microsoft-Antispam-PRVS: <BLUPR04MB8381C258FD33EBC328F875F86250@BLUPR04MB838.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(3002001)(102215026);
	SRVR:BLUPR04MB838; BCL:0; PCL:0; RULEID:; SRVR:BLUPR04MB838; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB838;
	4:bPbWQNoG4ENN/GrWvkWVoEC2a/hnKxJPqU/QwvgcI0HAXkqv6PnCiMDF71mTVH5KRlCD3L41eidKwvm7SUz9O3qt8K3j12I0csBG0Ee65Hy26lsq/f1PEkyyj9GswCiC2xGlc2JGE0+X/bN1IIJanJEgsuHRF3QngGuUW2zSnaV/TQW+1w5qWyr0TjkG+xpky+EaLS6vnmtAZLUMRXS+iFs4L3h2NWgwEnO9RUIV3Xhj9dGxrzclQ6j0IbT+Dqs1ThasqFL/bkE4YeghJwEV/LLhe+03QgFnIh5c/gYEY+hajqzbVz1vixKOe5oxINPJ0q5FfTzJ6QziQd0LnLvVuI8V/VC9yhppTnBJG5SeedMHMSSXmavjCMaQwn5gsKth
X-Forefront-PRVS: 073966E86B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(377454003)(479174004)(24454002)(189002)(199003)(92566002)(64126003)(80316001)(19580395003)(19580405001)(5008740100001)(86362001)(81156007)(4001350100001)(97736004)(83506001)(5001770100001)(87976001)(33656002)(23746002)(5007970100001)(122386002)(42186005)(15975445007)(59896002)(65816999)(189998001)(87266999)(65956001)(54356999)(2950100001)(66066001)(65806001)(77096005)(105586002)(40100003)(101416001)(93886004)(50466002)(76176999)(50986999)(117156001)(36756003)(106356001)(47776003)(5001960100002)(5004730100002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR04MB838; H:[192.168.1.76];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BLUPR04MB838;
	23:qJssO3QqYK9q8+pgmvjE9OaX2a0pajIVlTI804?=
	=?Windows-1252?Q?cERGPzmdSFAdjhKzl/gFHy1rRAsNTV4BOIMFsiBNJwoEtFKViKElXevw?=
	=?Windows-1252?Q?EJX3hqy3M+TIf7kMInxwHoPPVF2vSeL9nZjQzv9lFNecj9vwOaxISHoS?=
	=?Windows-1252?Q?Lx8cMg6Koi4b7CWWVmyydJqPSnqzQ0sEnSKTQZ7lLHQDfyp/1r4pjeKg?=
	=?Windows-1252?Q?ppicHsCeAPsoTXUttqJsDCRB9IghOUImZB51L7kq6kd4TMUNnBLf4RPv?=
	=?Windows-1252?Q?CmNbqFBxFKx6BopTlgSYE58ZoCWFGML/gPT6WDuSnyFHcwOVnBnv9ulR?=
	=?Windows-1252?Q?xXxv+8wdnVEVxDL2NlOk3QusABf6tpkzyisXyICzNcyV9R3+Xf7od9YG?=
	=?Windows-1252?Q?BoizvXz7auCLFzOJ3LFYWAbFP1L8IpktXwFQtQ1FNTnph/aFkwZHELUX?=
	=?Windows-1252?Q?9yzmOtWsZDDfVeWIAbrzqwgTlzE/jMrfsAA6TMAvJoy6E81h5KrHuksr?=
	=?Windows-1252?Q?572CO/SGZXebqbxVnkwRUN/pKC8EfGE1pOwVqYS7Sl6GDf7eyk62kk3g?=
	=?Windows-1252?Q?g+Y7hXYh69OdQKuf472cmsfRgcwXAkGiCBwdpQsqPvwuZ69U+9lwRIuA?=
	=?Windows-1252?Q?P9vVINYedvy2V5zFnreY+q24sCCVAov3hoMu+PtW3w9SfAePlaCbHV3j?=
	=?Windows-1252?Q?WTsWDjHDvdXq8cXVXiCJb2u1wb5Fa5Dpyku7EouBcxW4HxKPvE+n6iYo?=
	=?Windows-1252?Q?L3qWqhpMVBWJJ3l1SefCl/X0/BSlxSZN4RKMIa1hB3i5EiX/GqxgZo3f?=
	=?Windows-1252?Q?gOmcdREm+lixlGcho27UJgndgyWBextyy7CpZAy/eHCXxUIFSlo7Q5WA?=
	=?Windows-1252?Q?VjHSkcnev8K455TfSnW4Y6ZoY6sA4Pecw/eeUFfGpPTqamdAU0ltA8Od?=
	=?Windows-1252?Q?mfAOLuzp5pYbGI+5wzE4wA0Si5dBYFjWW1Dzy80N5HChi8oGrtGgP9J5?=
	=?Windows-1252?Q?VCKCTVPeDK7Fp0wM6di377boQV1usRx2GMYjDMLH984TBrzc0Qq+F9L3?=
	=?Windows-1252?Q?wNGeYNCN8EC85fnRlOZ7p8oow2lc4WoFd4fhaUtLWS3pgtMX3MmMBaqd?=
	=?Windows-1252?Q?o2b6QjQoXMtNkv2tfmIAdLZwdPFuSL2Z0vKh6UzXoYc2glE9Y3T7LGU3?=
	=?Windows-1252?Q?dKwMzXMfh9GX5Gm4syB+u9NVDHbK8AGwtsesD5YmtrYVq9zbn/F1zxeY?=
	=?Windows-1252?Q?2GxDHNxhuL8NPlLCVhfKefcs3Fkzdm+dPXFf9QeNUrb/S3jnmxlH9Wrj?=
	=?Windows-1252?Q?7BQqAyp+G5xDyuaGXznc2B6/CuruUCqf0mjOtgModucURTv/Ei/ziPl4?=
	=?Windows-1252?Q?5jIOe3Yc4b62vfsnN7x6I4bbenXCLDexe6ugLJ0kzm7B7QHGaL3+o=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB838;
	5:GlKKg8pCzMIynzPLK+n3/Npk/1I8EUZ83xVY4pOVXjbHRYu/xQfyrPvhwGPq7D5cGy/mfZldyDh0lbykgtfFIUcaxWqmSz64F7TH+eL8EgX1AJn6IbfYcOv434eVwLHMN3fPdWS69q50frzDIIIyWg==;
	24:SQyYeuuwSpYqEtiMZyG42E7r7856izi8k1a2Ej5I+bkAn6nPPTNSZq3tT44nTTrAT6ENmvvBp6Apa8mu12nvd8mTeZXEgRvxqL02sCgfGjg=;
	20:uygqiqJ7QrK8BYFOcqsBu5Sg9KExDd+T+9ycJKOhQpejGwa94IhBgepR72JaLR4tLAUKQKm4pt8VDeJq5ahmiQ==
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2015 17:53:21.6411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR04MB838
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Sat, 24 Oct 2015 18:26:03 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/21/2015 02:49 AM, Ahsan, Noor wrote:
> We are hitting this issue on another BSP
>
> file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_industrial_machine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_zedboard_zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a88f8b506-r0.0_zedboard_zynq7_mel.ipk
>
> need its solution quickly

If you are in need of a quick workaround, try setting:

option cache_local_files 0

on opkg.conf. This will make a copy of your ipk's instead of creating 
symlinks (haven't try it myself, but that's my understanding).

Also, please open a bug report for opkg on 
https://bugzilla.yoctoproject.org to track the issue.

> *From:*kergoth@gmail.com [mailto:kergoth@gmail.com] *On Behalf Of
> *Christopher Larson
> *Sent:* Tuesday, October 20, 2015 10:20 PM
> *To:* Paul Barker
> *Cc:* Ahsan, Noor; yocto@yoctoproject.org
> *Subject:* Re: [yocto] opkg 0.3.0 or rootfs task
>
> On Tue, Oct 20, 2015 at 10:14 AM, Christopher Larson
> <clarson@kergoth.com <mailto:clarson@kergoth.com>> wrote:
>
>     On Sun, Oct 18, 2015 at 2:57 AM, Paul Barker <paul@paulbarker.me.uk
>     <mailto:paul@paulbarker.me.uk>> wrote:
>
>         On Fri, Oct 16, 2015 at 07:38:19PM +0000, Ahsan, Noor wrote:
>          > On Oct 16, 2015, at 5:47 AM, Ahsan, Noor
>         <Noor_Ahsan@mentor.com
>         <mailto:Noor_Ahsan@mentor.com><mailto:Noor_Ahsan@mentor.com
>         <mailto:Noor_Ahsan@mentor.com>>> wrote:
>          >
>          > Hello,
>          >
>          > I noticed that at the time of rootfs creation symbolic links
>         of the ipk files present in deploy/ipk. The problem what have it
>         while creation of symbolic link it take the full path till that
>         ipk and remove slashes and convert them into underscores. Use
>         that as the name of the symbolic link. This make a very long
>         file names. If we have very long path then name of the symlink
>         exceed from max filename limits. And we get following error
>          >
>          > Collected errors:
>          > * file_link: unable to stat
>         `/var/jenkins/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-image/1.0-r0/rootfs//var/cache/opkg/volatile/file:_var_jenkins_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildtype_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a88f8b506-r0.0_mel_dra7xx_evm.ipk':
>         File name too long.
>          >
>          > Can anyone tell me why the addition of full path was added to
>         the symlink name and can we remove it cause it is cause issues?
>          >
>          > what does
>          >
>          > getconf PATH_MAX /
>          >
>          > show ?
>          >
>          > jenkins@amd-ubu14-32-3:~$ getconf -a | grep  PATH_MAX
>          > PATH_MAX                           4096
>          > _POSIX_PATH_MAX                    4096
>          >
>          >
>          > I think the issue is with file name not the path.
>          >
>          > Secondly the googling which I did reveals that symlink
>         creation can't be stopped. I just wanna confirm that is my
>         findings correct?
>          >
>
>         This looks like something we overlooked in opkg. When we added
>         the caching code
>         we didn't think about how long the paths and filenames might get
>         during the
>         rootfs step. It's not currently possible to reduce the length of
>         the symlink
>         filenames, but it is possible to change the directory in which
>         the symlinks are
>         created.
>
>         Currently the opkg cache dir can only be set in the opkg.conf
>         file. I think we
>         should add a '--cache-dir' argument to opkg. If this is added
>         you'll be able to
>         set the following in your local.conf file to change the cache
>         location. Eg. to
>         use '/tmp/opkg' on the host during rootfs creation.
>
>              OPKG_ARGS = "--cache-dir=/tmp/opkg"
>
>         I'll submit a patch to opkg to add this option.
>
>     This will only shorten the full path, not the filename length, so I
>     doubt this'll solve it. That said, I can't actually successfully
>     test this today, because cache_dir is made relative to offline_root,
>     so setting such a path as you suggest doesn't shorten the full path
>     either.
>
>
> Also, did a touch of just the cache filename and it gives the same
> filename length error, so where the cache dir is really isn't going to
> matter, it's the filename including the full path to a deep BUILDDIR,
> and therefore DEPLOY_DIR_IPK, which is the problem.
> --
>
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
>
>

