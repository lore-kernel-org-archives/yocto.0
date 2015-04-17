Return-Path: <cmills@tycoint.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A84A6E009CA; Fri, 17 Apr 2015 03:27:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 850 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Apr 2015 03:27:00 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0058.outbound.protection.outlook.com [157.56.110.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D4DE009C2
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 03:27:00 -0700 (PDT)
Received: from CY1PR0201CA0020.namprd02.prod.outlook.com (25.163.30.158) by
	CY1PR0201MB1003.namprd02.prod.outlook.com (25.161.211.145) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 17 Apr 2015 10:12:48 +0000
Received: from BN1AFFO11FD052.protection.gbl (2a01:111:f400:7c10::173) by
	CY1PR0201CA0020.outlook.office365.com (2a01:111:e400:58b9::30) with
	Microsoft SMTP Server (TLS) id 15.1.136.25 via Frontend Transport;
	Fri, 17 Apr 2015 10:12:48 +0000
Authentication-Results: spf=none (sender IP is 157.55.122.94)
	smtp.mailfrom=tycoint.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: None (protection.outlook.com: tycoint.com does not designate
	permitted sender hosts)
Received: from mail.tyco.com (157.55.122.94) by
	BN1AFFO11FD052.mail.protection.outlook.com (10.58.53.67) with Microsoft
	SMTP Server (TLS) id 15.1.148.11 via Frontend Transport;
	Fri, 17 Apr 2015 10:12:47 +0000
Received: from 003FCH1MPN2-012.003f.mgd2.msft.net
	([fe80::d8e1:9507:e39b:4f73]) by 003FCH1MMR2-003.003f.mgd2.msft.net
	([fe80::70d8:a97f:c852:83fd%11]) with mapi id 14.03.0224.003;
	Fri, 17 Apr 2015 10:12:46 +0000
From: "Mills, Clayton" <cmills@tycoint.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SRCREV issue with linux-yocto-custom do_validate_branches()
Thread-Index: AdB49uNdxtHG47y/QimYWVpdEQporA==
Date: Fri, 17 Apr 2015 10:12:46 +0000
Message-ID: <4ECB83F290E97A4F96082D1BDAF733360D0315@003FCH1MPN2-012.003f.mgd2.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.49.80]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:157.55.122.94; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10009020)(6009001)(428002)(199003)(53754006)(189002)(19580395003)(22746005)(229853001)(110136001)(50466002)(5250100002)(22756005)(86362001)(87936001)(86146001)(2351001)(5890100001)(105586002)(6806004)(230783001)(106466001)(2900100001)(19580405001)(2656002)(2501003)(77156002)(62966003)(46102003)(50986999)(54356999)(47776003)(33656002)(23726002)(102836002)(97756001)(450100001)(92566002)(104016003)(101416001)(107886001)(79686002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0201MB1003; H:mail.tyco.com;
	FPR:; SPF:None; MLV:sfv; A:1; MX:1; LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0201MB1003;
X-Microsoft-Antispam-PRVS: <CY1PR0201MB100344906C7300B6633471A2D3E30@CY1PR0201MB1003.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:CY1PR0201MB1003; BCL:0;
	PCL:0; RULEID:; SRVR:CY1PR0201MB1003; 
X-Forefront-PRVS: 0549E6FD50
X-OriginatorOrg: tycoint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2015 10:12:47.4350 (UTC)
X-MS-Exchange-CrossTenant-Id: 046b592b-a415-476a-9c97-a0703cb43ea3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=046b592b-a415-476a-9c97-a0703cb43ea3;
	Ip=[157.55.122.94]; Helo=[mail.tyco.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0201MB1003
Subject: SRCREV issue with linux-yocto-custom do_validate_branches()
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
X-List-Received-Date: Fri, 17 Apr 2015 10:27:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm having a little trouble with do_validate_branches() inherited by my lin=
ux-yocto-custom.
I'm building the 3.14.28 kernel with ltsi kernel patch set applied, so was =
trying to set this up with a custom linux recipe in my bsp.
Pointing to a branch in my own git repo that has the patch set pre-applied.
I've got a clone of dizzy. Which I used yocto-bsp create to start my bsp la=
yer.

But the process stops in do_validate_branches() with the following error lo=
g:
---------------------------------------------------------------------------=
-----
DEBUG: Executing shell function do_validate_branches
usage: git cat-file (-t|-s|-e|-p|<type>|--textconv) <object>
   or: git cat-file (--batch|--batch-check) < <list_of_objects>

<type> can be one of: blob, tree, commit, tag
    -t                    show object type
    -s                    show object size
    -e                    exit with zero when there's no error
    -p                    pretty-print object's content
    --textconv            for blob objects, run textconv on object's conten=
t
    --batch[=3D<format>]    show info and content of objects fed from the s=
tandard input
    --batch-check[=3D<format>]
                          show info about objects fed from the standard inp=
ut

ERROR:  is not a valid commit ID.
ERROR: The kernel source tree may be out of sync
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_validate_branches (log file is located at /opt/g=
it/poky/build/tmp/work/mylayer-poky-linux-gnueabi/linux-yocto-custom/3.14.2=
8+gitAUTOINC+7035c2a67d-r0/temp/log.do_validate_branches.56991)
---------------------------------------------------------------------------=
-----


The do_validate_branches() code from kernel-yocto.bbclass is as follows...
---------------------------------------------------------------------------=
-----
# Ensure that the branches (BSP and meta) are on the locations specified by
# their SRCREV values. If they are NOT on the right commits, the branches
# are corrected to the proper commit.
do_validate_branches() {
        set +e
        cd ${S}
        export KMETA=3D${KMETA}

        machine_branch=3D"${@ get_machine_branch(d, "${KBRANCH}" )}"

        machine_srcrev=3D"${SRCREV_machine}"

        # if SRCREV is AUTOREV it shows up as AUTOINC there's nothing to
        # check and we can exit early
        if [ "${machine_srcrev}" =3D "AUTOINC" ]; then
                bbnote "SRCREV validation is not required for AUTOREV"
        elif [ "${machine_srcrev}" =3D "" ] && [ "${SRCREV}" !=3D "AUTOINC"=
 ]; then
                # SRCREV_machine_<MACHINE> was not set. This means that a c=
ustom recipe
                # that doesn't use the SRCREV_FORMAT "machine_meta" is bein=
g built. In
                # this case, we need to reset to the give SRCREV before hea=
ding to patching
                bbnote "custom recipe is being built, forcing SRCREV to ${S=
RCREV}"
                force_srcrev=3D"${SRCREV}"
        else
                git cat-file -t ${machine_srcrev} > /dev/null
                if [ $? -ne 0 ]; then
                        bberror "${machine_srcrev} is not a valid commit ID=
."
                        bbfatal "The kernel source tree may be out of sync"
                fi
                force_srcrev=3D${machine_srcrev}
        fi

        ## KMETA branch validation.
        target_meta_head=3D"${SRCREV_meta}"
        if [ "${target_meta_head}" =3D "AUTOINC" ] || [ "${target_meta_head=
}" =3D "" ]; then
                bbnote "SRCREV validation skipped for AUTOREV or empty meta=
 branch"
        else
                meta_head=3D`git show-ref -s --heads ${KMETA}`

                git cat-file -t ${target_meta_head} > /dev/null
                if [ $? -ne 0 ]; then
                        bberror "${target_meta_head} is not a valid commit =
ID"
                        bbfatal "The kernel source tree may be out of sync"
                fi
                if [ "$meta_head" !=3D "$target_meta_head" ]; then
                        bbnote "Setting branch ${KMETA} to ${target_meta_he=
ad}"
                        git branch -m ${KMETA} ${KMETA}-orig
                        git checkout -q -b ${KMETA} ${target_meta_head}
                        if [ $? -ne 0 ];then
                                bbfatal "Could not checkout ${KMETA} branch=
 from known hash ${target_meta_head}"
                        fi
                fi
        fi

        git checkout -q -f ${machine_branch}
        if [ -n "${force_srcrev}" ]; then
                # see if the branch we are about to patch has been properly=
 reset to the defined
                # SRCREV .. if not, we reset it.
                branch_head=3D`git rev-parse HEAD`
                if [ "${force_srcrev}" !=3D "${branch_head}" ]; then
                        current_branch=3D`git rev-parse --abbrev-ref HEAD`
                        git branch "$current_branch-orig"
                        git reset --hard ${force_srcrev}
                fi
        fi
}
---------------------------------------------------------------------------=
-----


It seems like the problem is...
git cat-file -t ${machine_srcrev}
But ${machine_srcrev} is an empty string when it gets to it.

My linux-yocto-custom.bb in my bsp is as follows...
---------------------------------------------------------------------------=
-----
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SRC_URI =3D "git://joe_blogs@gitmaster/linux-stable.git;protocol=3Dssh;bare=
clone=3D1;branch=3D${KBRANCH}"

SRC_URI +=3D "file://mylayer.scc \
            file://mylayer.cfg \
            file://mylayer-user-config.cfg \
            file://mylayer-user-patches.scc \
           "

KBRANCH =3D "v3.14.28-ltsi"

LINUX_VERSION ?=3D "3.14.28"
LINUX_VERSION_EXTENSION ?=3D "-ltsi"

SRCREV=3D"${AUTOREV}"

PR =3D "r0"
PV =3D "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE_mymach =3D "mymach"

# prepend to do_configure()
# makes a link from the defconfig that is going to be used by
# kernel_do_configure() to the defconfig we have set up in kernel souce
do_configure_prepend () {
        ln -sf "${WORKDIR}/linux-stable/arch/arm/configs/myconfig_defconfig=
" "${WORKDIR}/defconfig"
}
---------------------------------------------------------------------------=
-----


My thoughts are that ${machine_srcrev}, should be ${SRCREV_machine}, which =
should be "AUTOINC".
Rather than the empty string it is evaluating as.
Because of the SRCREV=3D"${AUTOREV}" line in my bsp layer linux-yocto-custo=
m.bb.

Replacing a line in the kernel-yocto.bbclass as follows... (please excuse m=
y self-created pseudo-diff, I'm in a rush)
-    machine_srcrev=3D"${SRCREV_machine}"
+    machine_srcrev=3D"${@ get_machine_branch(d, "${SRCREV}" )}"

Seems make it resolve as "AUTOINC" and fix the problem.
But I would have thought that ${SRCREV_machine} should be resolving as my m=
achine branch ${SRCREV} anyway.
So really this change shouldn't have done anything.

So I guess what I'm wondering is, what am I missing about how and where "${=
SRCREV_machine}" is set and how it resolves?

Any help or comments would be appreciated.

Cheers,
Clayton Mills

________________________________

This e-mail contains privileged and confidential information intended for t=
he use of the addressees named above. If you are not the intended recipient=
 of this e-mail, you are hereby notified that you must not disseminate, cop=
y or take any action in respect of any information contained in it. If you =
have received this e-mail in error, please notify the sender immediately by=
 e-mail and immediately destroy this e-mail and its attachments.

