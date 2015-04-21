Return-Path: <cmills@tycoint.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D274E0099B; Tue, 21 Apr 2015 05:21:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0097.outbound.protection.outlook.com [157.56.110.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD89E00952
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 05:21:33 -0700 (PDT)
Received: from BY2PR02CA0106.namprd02.prod.outlook.com (25.163.44.160) by
	CY1PR0201MB1084.namprd02.prod.outlook.com (25.161.214.20) with
	Microsoft SMTP
	Server (TLS) id 15.1.148.15; Tue, 21 Apr 2015 12:21:31 +0000
Received: from BY2FFO11FD017.protection.gbl (2a01:111:f400:7c0c::197) by
	BY2PR02CA0106.outlook.office365.com (2a01:111:e400:5261::32) with
	Microsoft SMTP Server (TLS) id 15.1.130.23 via Frontend Transport;
	Tue, 21 Apr 2015 12:21:31 +0000
Authentication-Results: spf=none (sender IP is 157.55.122.94)
	smtp.mailfrom=tycoint.com; windriver.com; dkim=none (message not signed)
	header.d=none;
Received-SPF: None (protection.outlook.com: tycoint.com does not designate
	permitted sender hosts)
Received: from mail.tyco.com (157.55.122.94) by
	BY2FFO11FD017.mail.protection.outlook.com (10.1.14.105) with Microsoft
	SMTP Server (TLS) id 15.1.148.11 via Frontend Transport;
	Tue, 21 Apr 2015 12:21:30 +0000
Received: from 003FCH1MPN2-011.003f.mgd2.msft.net ([fe80::c89:92fa:9e8c:9916])
	by 003FCH1MMR2-010.003f.mgd2.msft.net
	([fe80::2021:e4e0:57af:79be%11]) with
	mapi id 14.03.0224.003; Tue, 21 Apr 2015 12:21:29 +0000
From: "Mills, Clayton" <cmills@tycoint.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SRCREV issue with linux-yocto-custom
	do_validate_branches()
Thread-Index: AdB49uNdxtHG47y/QimYWVpdEQporAAG2JcAAMa6gzA=
Date: Tue, 21 Apr 2015 12:21:29 +0000
Message-ID: <4ECB83F290E97A4F96082D1BDAF733360D1D7E@003FCH1MPN2-011.003f.mgd2.msft.net>
References: <4ECB83F290E97A4F96082D1BDAF733360D0315@003FCH1MPN2-012.003f.mgd2.msft.net>
	<55310A4A.8000001@windriver.com>
In-Reply-To: <55310A4A.8000001@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.49.80]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:157.55.122.94; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10009020)(6009001)(428002)(51704005)(377424004)(377454003)(53754006)(24454002)(189002)(199003)(52314003)(40764003)(52044002)(101416001)(106466001)(50466002)(2656002)(86146001)(230783001)(76176999)(50986999)(19580395003)(47776003)(19580405001)(33656002)(107886001)(104016003)(87936001)(46102003)(54356999)(105586002)(62966003)(102836002)(77156002)(22756005)(5001770100001)(97756001)(22746005)(5250100002)(92566002)(2900100001)(86362001)(2920100001)(2950100001)(6806004)(23726002)(55846006)(46406003)(5890100001)(2501003)(79686002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0201MB1084; H:mail.tyco.com;
	FPR:; SPF:None; MLV:sfv; MX:1; A:1; LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0201MB1084;
X-Microsoft-Antispam-PRVS: <CY1PR0201MB1084AF517B5F53A64E257D67D3EF0@CY1PR0201MB1084.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:CY1PR0201MB1084; BCL:0;
	PCL:0; RULEID:; SRVR:CY1PR0201MB1084; 
X-Forefront-PRVS: 0553CBB77A
X-OriginatorOrg: tycoint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2015 12:21:30.8627 (UTC)
X-MS-Exchange-CrossTenant-Id: 046b592b-a415-476a-9c97-a0703cb43ea3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=046b592b-a415-476a-9c97-a0703cb43ea3;
	Ip=[157.55.122.94]; Helo=[mail.tyco.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0201MB1084
Subject: Re: SRCREV issue with linux-yocto-custom do_validate_branches()
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
X-List-Received-Date: Tue, 21 Apr 2015 12:21:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On 17 April 2015 14:28, Bruce Ashfield wrote:
>
> On 2015-04-17 6:12 AM, Mills, Clayton wrote:
> > Hi All,
> >
> > I'm having a little trouble with do_validate_branches() inherited by my=
 linux-yocto-custom.
> > I'm building the 3.14.28 kernel with ltsi kernel patch set applied, so =
was trying to set this up with a custom linux recipe in my bsp.
>
> Out of curiosity, was something missing in the linux-yocto 3.14 LTSI inte=
gration ? I'll comment on the specifics below, but I was wondering about th=
at high level point as well.

I'll admit I'm new to yocto so if I've missed where I could have easily sel=
ected v3.14.28-ltsi along the way then my bad. Unfortunate because I'm prob=
ably making more work for myself. Though this is probably as good an opport=
unity for learning my way around. To be honest in the very near future I wi=
ll be building from a branch that is forked off of v3.14.28-ltsi with some =
custom stuff anyway, so perhaps this isn't a complete waste of time.

Feel free to expand on what I should be doing. Like I said, I'm new to yoct=
o.

>
> > Pointing to a branch in my own git repo that has the patch set pre-appl=
ied.
> > I've got a clone of dizzy. Which I used yocto-bsp create to start my bs=
p layer.
> >
> > But the process stops in do_validate_branches() with the following erro=
r log:
> > ----------------------------------------------------------------------
> > ----------
> > DEBUG: Executing shell function do_validate_branches
> > usage: git cat-file (-t|-s|-e|-p|<type>|--textconv) <object>
> >     or: git cat-file (--batch|--batch-check) < <list_of_objects>
> >
> > <type> can be one of: blob, tree, commit, tag
> >      -t                    show object type
> >      -s                    show object size
> >      -e                    exit with zero when there's no error
> >      -p                    pretty-print object's content
> >      --textconv            for blob objects, run textconv on object's c=
ontent
> >      --batch[=3D<format>]    show info and content of objects fed from =
the standard input
> >      --batch-check[=3D<format>]
> >                            show info about objects fed from the
> > standard input
> >
> > ERROR:  is not a valid commit ID.
> > ERROR: The kernel source tree may be out of sync
> > WARNING: exit code 1 from a shell command.
>
> Do you have the entire log pastebin'd somewhere ? It would be nice to kno=
w if this is the meta, or machine validation that is getting an empty commi=
t.
>
> > ERROR: Function failed: do_validate_branches (log file is located at
> > /opt/git/poky/build/tmp/work/mylayer-poky-linux-gnueabi/linux-yocto-cu
> > stom/3.14.28+gitAUTOINC+7035c2a67d-r0/temp/log.do_validate_branches.56
> > 991)
> > ----------------------------------------------------------------------
> > ----------
> >
> >
> > The do_validate_branches() code from kernel-yocto.bbclass is as follows=
...
> > ----------------------------------------------------------------------
> > ---------- # Ensure that the branches (BSP and meta) are on the
> > locations specified by # their SRCREV values. If they are NOT on the
> > right commits, the branches # are corrected to the proper commit.
> > do_validate_branches() {
> >          set +e
> >          cd ${S}
> >          export KMETA=3D${KMETA}
> >
> >          machine_branch=3D"${@ get_machine_branch(d, "${KBRANCH}" )}"
> >
> >          machine_srcrev=3D"${SRCREV_machine}"
> >
> >          # if SRCREV is AUTOREV it shows up as AUTOINC there's nothing =
to
> >          # check and we can exit early
> >          if [ "${machine_srcrev}" =3D "AUTOINC" ]; then
> >                  bbnote "SRCREV validation is not required for AUTOREV"
> >          elif [ "${machine_srcrev}" =3D "" ] && [ "${SRCREV}" !=3D "AUT=
OINC" ]; then
> >                  # SRCREV_machine_<MACHINE> was not set. This means tha=
t a custom recipe
> >                  # that doesn't use the SRCREV_FORMAT "machine_meta" is=
 being built. In
> >                  # this case, we need to reset to the give SRCREV befor=
e heading to patching
> >                  bbnote "custom recipe is being built, forcing SRCREV t=
o ${SRCREV}"
> >                  force_srcrev=3D"${SRCREV}"
> >          else
> >                  git cat-file -t ${machine_srcrev} > /dev/null
> >                  if [ $? -ne 0 ]; then
> >                          bberror "${machine_srcrev} is not a valid comm=
it ID."
> >                          bbfatal "The kernel source tree may be out of =
sync"
> >                  fi
> >                  force_srcrev=3D${machine_srcrev}
> >          fi
> >
> >          ## KMETA branch validation.
> >          target_meta_head=3D"${SRCREV_meta}"
> >          if [ "${target_meta_head}" =3D "AUTOINC" ] || [ "${target_meta=
_head}" =3D "" ]; then
> >                  bbnote "SRCREV validation skipped for AUTOREV or empty=
 meta branch"
> >          else
> >                  meta_head=3D`git show-ref -s --heads ${KMETA}`
> >
> >                  git cat-file -t ${target_meta_head} > /dev/null
> >                  if [ $? -ne 0 ]; then
> >                          bberror "${target_meta_head} is not a valid co=
mmit ID"
> >                          bbfatal "The kernel source tree may be out of =
sync"
> >                  fi
> >                  if [ "$meta_head" !=3D "$target_meta_head" ]; then
> >                          bbnote "Setting branch ${KMETA} to ${target_me=
ta_head}"
> >                          git branch -m ${KMETA} ${KMETA}-orig
> >                          git checkout -q -b ${KMETA} ${target_meta_head=
}
> >                          if [ $? -ne 0 ];then
> >                                  bbfatal "Could not checkout ${KMETA} b=
ranch from known hash ${target_meta_head}"
> >                          fi
> >                  fi
> >          fi
> >
> >          git checkout -q -f ${machine_branch}
> >          if [ -n "${force_srcrev}" ]; then
> >                  # see if the branch we are about to patch has been pro=
perly reset to the defined
> >                  # SRCREV .. if not, we reset it.
> >                  branch_head=3D`git rev-parse HEAD`
> >                  if [ "${force_srcrev}" !=3D "${branch_head}" ]; then
> >                          current_branch=3D`git rev-parse --abbrev-ref H=
EAD`
> >                          git branch "$current_branch-orig"
> >                          git reset --hard ${force_srcrev}
> >                  fi
> >          fi
> > }
> > ----------------------------------------------------------------------
> > ----------
> >
> >
> > It seems like the problem is...
> > git cat-file -t ${machine_srcrev}
> > But ${machine_srcrev} is an empty string when it gets to it.
> >
> > My linux-yocto-custom.bb in my bsp is as follows...
> > ----------------------------------------------------------------------
> > ----------
> > inherit kernel
> > require recipes-kernel/linux/linux-yocto.inc
> >
> > SRC_URI =3D "git://joe_blogs@gitmaster/linux-stable.git;protocol=3Dssh;=
bareclone=3D1;branch=3D${KBRANCH}"
> >
> > SRC_URI +=3D "file://mylayer.scc \
> >              file://mylayer.cfg \
> >              file://mylayer-user-config.cfg \
> >              file://mylayer-user-patches.scc \
> >             "
> >
> > KBRANCH =3D "v3.14.28-ltsi"
> >
> > LINUX_VERSION ?=3D "3.14.28"
> > LINUX_VERSION_EXTENSION ?=3D "-ltsi"
> >
> > SRCREV=3D"${AUTOREV}"
> >
> > PR =3D "r0"
> > PV =3D "${LINUX_VERSION}+git${SRCPV}"
> >
> > COMPATIBLE_MACHINE_mymach =3D "mymach"
> >
> > # prepend to do_configure()
> > # makes a link from the defconfig that is going to be used by #
> > kernel_do_configure() to the defconfig we have set up in kernel souce
> > do_configure_prepend () {
> >          ln -sf "${WORKDIR}/linux-stable/arch/arm/configs/myconfig_defc=
onfig" "${WORKDIR}/defconfig"
> > }
> > ----------------------------------------------------------------------
> > ----------
> >
> >
> > My thoughts are that ${machine_srcrev}, should be ${SRCREV_machine}, wh=
ich should be "AUTOINC".
> > Rather than the empty string it is evaluating as.
> > Because of the SRCREV=3D"${AUTOREV}" line in my bsp layer linux-yocto-c=
ustom.bb.
> >
> > Replacing a line in the kernel-yocto.bbclass as follows... (please excu=
se my self-created pseudo-diff, I'm in a rush)
> > -    machine_srcrev=3D"${SRCREV_machine}"
> > +    machine_srcrev=3D"${@ get_machine_branch(d, "${SRCREV}" )}"
> >
> > Seems make it resolve as "AUTOINC" and fix the problem.
> > But I would have thought that ${SRCREV_machine} should be resolving as =
my machine branch ${SRCREV} anyway.
> > So really this change shouldn't have done anything.
> >
> > So I guess what I'm wondering is, what am I missing about how and where=
 "${SRCREV_machine}" is set and how it resolves?
>
> You just need to set SRCREV_machine=3D" <your commit hash> " and things s=
hould work. It's a variable like any other, and is triggered for use by the=
 SRCREV_format variable you'll see in the linux-yocto includes (and that se=
ts it to meta_machine), which indicates that both a _machine and _meta SRCR=
EV are used for the recipes.

Yeah, it works when I set SRCREV, or SRCREV_machine for that matter, to a c=
ommit hash in my linux-yocto-custom.bb but then I'm going to have to update=
 this every time my custom branch progresses in the future.
I would have hoped setting SRCREV=3D"${AUTOREV}" in my layer would result i=
n SRCREV_machine being set correctly to "AUTOINC", straight out of the box =
so to speak, but it seems to not have been or not be resolving.
Adding SRCREV_machine=3D"${AUTOREV}" to my layer's .bb, as you suggest late=
r, does fix the problem as would be expected.

>
> The reason that SRCREV is checked in those routines, is for compatibility=
 with recipes that don't use the same format, or existing recipes that only=
 set SRCREV .. and it's a game or corner cases (which was streamlined a bit=
 more in the
> 1.8 release).
>
> But in both of the validation cases, you should either be hitting this co=
ndition for the machine branch:
>
> elif [ "${machine_srcrev}" =3D "" ] && [ "${SRCREV}" !=3D "AUTOINC" ]; th=
en
>

Interesting because when I get to this point ${machine_srcrev} was "" and $=
{SRCREV} is "AUTOINC". Which causes this block to not be entered due to the=
 !=3D clause. Interesting anyway, I won't claim to understand the finer poi=
nts of the SRCREV_format stuff you've discussed.

> and for meta:
>
> if [ "${target_meta_head}" =3D "AUTOINC" ] || [ "${target_meta_head}" =3D=
 ""
> ]; then
>

It didn't get to this as before this it tried to use the empty ${machine_sr=
crev} with a git command.

> In both cases, they'll skip validation and not try to cat that empty revi=
sion, but looking at it more closely .. I can see that it might just be fal=
ling into the third part of the test and going after the empty commit .. an=
other path through the maze!
>

Yes, a maze indeed. Seems that what gets created for a custom linux build b=
y yocto-bsp create, for dizzy at least, has some cracks in the walls where =
things can fall through.

> Short-term, just set SRCREV_machine, or pick a fixed revision for your SR=
CREV and you should pass the test.

Thanks for your help. As mentioned above setting SRCREV_machine=3D"${AUTORE=
V}" in my layer .bb fixed the problem. As least this way I don't need to ed=
it the .bbclass.

So from what you're saying it seems like my original work around in the .bb=
class of...
-    machine_srcrev=3D"${SRCREV_machine}"
+    machine_srcrev=3D"${@ get_machine_branch(d, "${SRCREV}" )}"
To get it to retrieve the machine branch SRCREV, which seems to not have be=
en set at this point. Was pretty close to a good fix. Particularly when I l=
ook at the line above where it gets the machine branch ${KBRANCH} in the sa=
me way.

I've not looked at whether this corner case slips through the cracks since =
this stuff was reworked. Perhaps I should.

Clayton

>
> Bruce
>
> >
> > Any help or comments would be appreciated.
> >
> > Cheers,
> > Clayton Mills
> >

________________________________

This e-mail contains privileged and confidential information intended for t=
he use of the addressees named above. If you are not the intended recipient=
 of this e-mail, you are hereby notified that you must not disseminate, cop=
y or take any action in respect of any information contained in it. If you =
have received this e-mail in error, please notify the sender immediately by=
 e-mail and immediately destroy this e-mail and its attachments.

