Return-Path: <rcalhoun@shotspotter.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0236.outbound.protection.outlook.com [207.46.163.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B12E00C6A
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:32:41 -0700 (PDT)
Received: from CO1PR04MB556.namprd04.prod.outlook.com (10.141.73.23) by
	CO1PR04MB556.namprd04.prod.outlook.com (10.141.73.23) with Microsoft
	SMTP Server (TLS) id 15.0.921.12; Tue, 22 Apr 2014 14:32:37 +0000
Received: from CO1PR04MB556.namprd04.prod.outlook.com ([169.254.8.7]) by
	CO1PR04MB556.namprd04.prod.outlook.com ([169.254.8.7]) with mapi id
	15.00.0921.000; Tue, 22 Apr 2014 14:32:37 +0000
From: Robert Calhoun <rcalhoun@shotspotter.com>
To: Neuer User <auslands-kv@gmx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Newbie question: How to get dependencies into compile
	of custom recipe?
Thread-Index: AQHPXje0bdsX2h1FkU+aqahUwAprdA==
Date: Tue, 22 Apr 2014 14:32:36 +0000
Message-ID: <CF7BEDE6.25E3D9%rcalhoun@shotspotter.com>
References: <lj57d5$6ao$1@ger.gmane.org>
In-Reply-To: <lj57d5$6ao$1@ger.gmane.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [50.43.174.186]
x-forefront-prvs: 01894AD3B8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019001)(6009001)(428001)(377454003)(199002)(189002)(24454002)(479174003)(79102001)(87936001)(92726001)(20776003)(66066001)(92566001)(2656002)(31966008)(77982001)(81342001)(81542001)(36756003)(74662001)(74502001)(50986999)(46102001)(76176999)(86362001)(80976001)(76482001)(54356999)(83072002)(80022001)(83322001)(99286001)(85852003)(19580395003)(19580405001)(4396001)(83506001)(99396002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO1PR04MB556;
	H:CO1PR04MB556.namprd04.prod.outlook.com;
	FPR:FCA3C155.22E652E9.33D115A8.9CE62969.20321; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (: shotspotter.com does not designate permitted sender
	hosts)
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
Subject: Re: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 14:32:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4C53FDEAF3DCE74391DF96F2C8BA9EA0@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable



On 4/22/14 3:57 AM, "Neuer User" <auslands-kv@gmx.de> wrote:
>Sorry for this simple question. I've just started building my first
>image with yocto and would now like to add a (very simple) own recipe.

(I am not familiar with gstreamer, but it looks like a big project and
maybe not so simple!)

The yocto build system figures out dependencies and build order, sets the
environment, and generates shell scripts to do the actual tasks. The
actual "work" is done by these shell scripts, not by the python code.

Your recipe explicitly defines some steps like do_compile(). When you do
this, you are saying "Let me control the compilation, I know what I am
doing!". Your do_compile() step is going to generate a run.do_compile
script, and that has to work just as if you were running the script
yourself.


If something doesn't work, try "bitbake {pkg} -c devshell".  That will
drop you into the environment the compiler is going to see. The shell
scripts are in ../temp. Each script is a single step (do_compile etc). All
of the substitutions that Richard described will already have been made;
and you will see all the environment variables being set and the calls
made to the compiler, linker etc. This directory also contains the log
files from recent executions.

You can run these manually, e.g. ../temp/run.do_compile. (The files
without PIDs are symlinks to the latest script.) You can edit this script
and re-run the compile and link step until it works. Once you've figured
out what needs to be set or run, modify the recipe to generate that
environment or command.

An important thing to understand is that each step lives in its own little
world; an environment variable set in the do_compile is not present in
do_install unless you put it there. Avoidance of global state allows the
build system to run multiple tasks in parallel.
=20
-Rob Calhoun
(still figuring this stuff out myself)


