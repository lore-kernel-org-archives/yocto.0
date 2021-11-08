Return-Path: <maksym.iliev@litmus.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E584C433EF
	for <webhook@archiver.kernel.org>; Mon,  8 Nov 2021 15:38:10 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.128])
 by mx.groups.io with SMTP id smtpd.web12.46316.1636385889408685132
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 07:38:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@litmus.io header.s=selector2 header.b=bvkwWezF;
 spf=pass (domain: litmus.io, ip: 40.107.236.128,
 mailfrom: maksym.iliev@litmus.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRgL3wqvDzbc16MKS9hTwoD8VbK5kbwGF6IYT8Htl0NcsbvRrTN9l2wMpZ7JeYn4+XwD/T5EV9num27HIluswXAHOy5REeM2GcFJtQyrqTk523Xadwthx0MDiyp6hyGmap+fjKhvtSf2WHsE34loR+TWjsvxQoylS+0kRFen2uTuySfRX/Gz/2wMOA3RIyUNNaVgr9O7oNLNf/zp3IaDRkMOMpWkrXb2Lc9XQCItuEyDJq8Opm+sOAryIrzJtj9wxq5dtjcogbe5e23oy62g2F9HKMSETn5E6QXybWtihqwQY+ADTBKq/KDV0wJbWL1juNqQ81o/4Hd6qUPNoI/DnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAR0Nf8EsMZmg/2cKuFt9ftuUJ4lHz00rOUNiBM4z7E=;
 b=YxbohOO5PzlWvbROO1nP4Gy+kdW8cHmv3ijlpfNeMZBoyRrMKOdrIkp525atsJe5C7be4a9uI/5nUhko7T9ZPn48y3BUZ2Ogiy8OdyD8LNU23A3SrjHIy7+oUl1ADI4di0jQ46uqiQ1Rfbg02rQvrlKKVnkUdAF7f3hUBSsDYCPl75WC6mH929jk+8x3l+xeZZeQ6AvlHV3F901uGI5SM4e/epWNcU0pqCuyncOc9sn9ZDN+3Axfh+zzX7iw9PlkFyvEp9X3z5Ly+kLYmb6ocDRjIQ3ui3HEvZDoy40cd/FFEejs0OY0hZ1EAk7X0bM6qaqP1Jbtu0a5goFJfYoUzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=litmus.io; dmarc=pass action=none header.from=litmus.io;
 dkim=pass header.d=litmus.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=litmus.io;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAR0Nf8EsMZmg/2cKuFt9ftuUJ4lHz00rOUNiBM4z7E=;
 b=bvkwWezFGR8hUIVV1e7rC8su7aARObPtG8/8fz5iK9DV1ixCByfNz7cecCjjdemO8tGpL4XLq/Z3JoNWu84GB/7ADLW+/d64//FcIp6t4pQrRrnUDMtpbUB7xpBZ3sm16wnXlH2uMgqT75L8CCd6qA5ckueKTxAlWZ+pu2x6Xoj/CzejBrqI2BDtfyHhtVZBXVkN4psA/PPI9jeKpSJIjHPrN/9gaAd8xWf8yfI7T+/fhaB4d9bARNtz4wPvl87H/BwUTEE9A2ye3BGrcfzXyepepLZXTuKRIjjIuL1e0dAt3KjaFdcuy403tMAGPSaNJ/1X1U/LaDA09DeH98EgLg==
Received: from DS7PR13MB4656.namprd13.prod.outlook.com (2603:10b6:5:3a5::21)
 by DM6PR13MB3852.namprd13.prod.outlook.com (2603:10b6:5:242::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.5; Mon, 8 Nov
 2021 15:38:06 +0000
Received: from DS7PR13MB4656.namprd13.prod.outlook.com
 ([fe80::90ff:e1f5:a936:94b8]) by DS7PR13MB4656.namprd13.prod.outlook.com
 ([fe80::90ff:e1f5:a936:94b8%7]) with mapi id 15.20.4690.014; Mon, 8 Nov 2021
 15:38:06 +0000
From: Maksym Iliev <maksym.iliev@litmus.io>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Bitbake build fails because of a python function
Thread-Topic: [yocto] Bitbake build fails because of a python function
Thread-Index: AQHX0PP6JxWZBnBQgkGYG0wWpnCB66vyRjWAgAF/rkSAAAY+AIAF/o6C
Date: Mon, 8 Nov 2021 15:38:06 +0000
Message-ID: 
 <DS7PR13MB46566CB2DD9F9B04C3A659B299919@DS7PR13MB4656.namprd13.prod.outlook.com>
References: <euYj.1635972322068884592.0Er3@lists.yoctoproject.org>
 <CANNYZj-fw0kscaYn3BP2DQzb-6Mgr9AJSw8wpbfBwmAGQhLHCA@mail.gmail.com>
 <DS7PR13MB46564C64E6058CB6A289E316998D9@DS7PR13MB4656.namprd13.prod.outlook.com>
 <CANNYZj9Kanumk+n8XhLRZ08FvOWz9HzB8e-LAfZgh53--+9v0Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9Kanumk+n8XhLRZ08FvOWz9HzB8e-LAfZgh53--+9v0Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=litmus.io;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1eb07c72-09e3-4bd9-7951-08d9a2cdc293
x-ms-traffictypediagnostic: DM6PR13MB3852:
x-microsoft-antispam-prvs: 
 <DM6PR13MB38527ECE44C2E9D674F9F31299919@DM6PR13MB3852.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vKFuMfkV3f0QmKEa96+sZQcRUVxvBC62daYvNHPhZJgjztaKHJbCmpf0JA8yg8JMNgYOoe1Dc6jVrtCf2e1AQxwHmBsJTEt2yBI+17Il/vc75YdOr9aD732+1pc1uZw2VhGieE8Z7Ucjy6GuenPHmY32t32gPQBtgeJErgla5etY/hfr3M3FQwXrSAj+hrTdZJGCaQasVjttZNGTUDrLtepf5agUFYcAXO7Olf8/efUYOpxhl2ASKEeL1WVstD74kEyjERULYd4xRk6ZBlwp5vLMFqnbYmUINSW07CCoaeD4ZSlQZZY18OR5Qqt/1yceLwxUQgE9tNZKiWL8Ru1IVhoRm+c0NK0pUJ15ll4NrZ2noIPiapowCRtFf4xJcYB7/rhe8j1wBcjQG2E5q7UcbhgxWMQhjtTwR7ubt05l14+FLHqAdqPNQ5s0kgFQ9Hp5US9mFQOQi/ZtkI8/WzXbHpwnYj/BSsTEfOcAHuane2I/OuK+SaBtlqsTMiEtiJe/5sZOdd8fKt63OrKKxi0n+ySn9jW8DiZ5OOm6kgp6GmrCRxcre6zK4vR5WuZo5/ajZy3j3YyGHUHo38epQs8rBVGPYoQr9+Uj1rR8gpKZUned4YwhwWM3n6j+nH3BQsw8BApLe+yn4i9pnvoVEwh9rc9ZIWutN+hd34CG8eTzCMukW553gWUKiYYKxFQ1pbLVo0o8bbRFx2dcqsem6glOU/t4GFKC1vjxRfPRlWMHJbdM63CQXLtG+DlxFkWsU96xgWHIvzzYzHmkeR6Bhc2CtZmgfKePYUvLDofIca7bfCJrlZ9zlAuNxeNBy2py1Umk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR13MB4656.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39840400004)(86362001)(52536014)(8676002)(91956017)(76116006)(44832011)(26005)(166002)(6916009)(6506007)(5660300002)(4326008)(71200400001)(53546011)(83380400001)(38100700002)(64756008)(66476007)(122000001)(33656002)(66556008)(38070700005)(66446008)(9686003)(508600001)(8936002)(66946007)(966005)(316002)(186003)(7696005)(55016002)(2906002)(10090945008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?PeoUT4oj+qWMNCEDVNmAcdDjSlOig0cauyyUi531rdhnWMX5uI0yPGr4JUOP?=
 =?us-ascii?Q?FHEg06poZdiG/RQjp/VotzyBdz+6yi3ID8KKFigPxmplEgxG8UgMSCndCjfi?=
 =?us-ascii?Q?NywrDIYUU0gQnmgrzX5V/v3p5lYq15mNOg6XD39TL1zYhXz0sCsfAdWAiFy1?=
 =?us-ascii?Q?oIJeELCYbcAJi9x0njGW1ACeLLesRBsHpWQaFc9kurmuYe90Y3H6a6BGUDPv?=
 =?us-ascii?Q?0zzgk1boxd9AwN3kDcI3UbykkJevWdl54lFnKD4Gmk8Mg00ZS7ftqKXZJ8Tk?=
 =?us-ascii?Q?kInFy8A46RmTK1zReRlUiTYdbpcED429aN6UerXo6r17tKFodGcxUmnBnOhM?=
 =?us-ascii?Q?KJNiKfMg3jGoAWC+RMhSh9MWzbWlGUvZiLDATCZMIS6COiNEfopvqGOAvOdV?=
 =?us-ascii?Q?KxQMayJyGoIxSZ7rhwIk+fjC3cgfOBHjwUkUEQp3YXZDpGxG0Tnz8r1NYoml?=
 =?us-ascii?Q?LnthwEJGvczxaXFnyXF+bT3QVJYAq8F9DJYqMTaBBXEw6DSFJb0WzCFEdA4M?=
 =?us-ascii?Q?CQALXCpDYD5zuDhviJaTK5w2Pkx6TFBzoU3B216GkIrLHaNe0VTLkqiFCWuX?=
 =?us-ascii?Q?nSjM6fe08VhW8eTDt9a8CSEewGB07hE0Uqmj9j1BEjYYku6lS6QCPSLarQ4Q?=
 =?us-ascii?Q?ehb3MHsxJRvdJwo1DuDUQ0LJwDbZFt2LrWKYot72dL+/wDiniXhsuUZmK0Vt?=
 =?us-ascii?Q?BDcjfBNTAWO0kGqfKR4UESOP3EF5ohc3IkDVL1i/MNCxuBisj941j/swpMz9?=
 =?us-ascii?Q?FN8wQw8Zy1aS+uOTgrcdLFt9XBxUw1hQ7l724Xi2Ioj89982girwDtiKIbLP?=
 =?us-ascii?Q?VWucOXTzOW+T1GXtM+mlQqGVkt2LyxmJCofXVL5jwF/mR6UQBjdk+tFb1riT?=
 =?us-ascii?Q?lClLYTsdx8Sax7yAj90WjhVKskVi5BGlPFRFcRYFTi2+5ISJ36toQtumUl5L?=
 =?us-ascii?Q?Yg+lFjzHyF+TiClW5vgleVGmV/iTcMgpcnLZz7HtyUkliVH06vtuYuv47ZZu?=
 =?us-ascii?Q?YSoyVKUfjIJM6QRdRBRXrhe5YHO94E4+txMgo+0kk5Hl06I7lBWNgmGpw7zv?=
 =?us-ascii?Q?UdliJjIYb/oSuWoEfy5+u8IDJ0kc7Nv3sR1xYCZb2CfHb73wj0fVlint6k7x?=
 =?us-ascii?Q?hjDOA3iQ1KtcGJtYPI9S7Di2IRXhSAgkIuR855OYbc85OcARQdrqZRbRAJsh?=
 =?us-ascii?Q?lvLuJSB81RorsLLq1WtG2zXybBb5W+KUOsHb36xmgLuJ0zlOM4AeCh97pipy?=
 =?us-ascii?Q?jvpbsZnI31S2ar7Ph+Xz7J3izSTH99So0jJ7nRReG6N2kDD/miLqCCJ/uLmL?=
 =?us-ascii?Q?z5c9X8n0aM0ztJdXgqrd0uP9qyJnzxkLqSWeK57c4GSQm6mlkowbXsalGjlI?=
 =?us-ascii?Q?qZmqHJarsYG+4z9Z8XVhB8Ca+jgRGTPehEWwjK5cSIseqogvYLHQwEP6P6Lj?=
 =?us-ascii?Q?6J5NThYQFsLxodF8igpsoIvONOVdz0/Aj1erio99XarkEqAeQPAtFcyyQ4x7?=
 =?us-ascii?Q?217t6O4UgeVjat9P8w0878MxFxeDuUWK0OELAC9j9NmBYGlFXuILUwuX5QIQ?=
 =?us-ascii?Q?MY0Vwy9Ei/eBtiHmYi2wBme6lJbhHeAeFUU4lLPIXJnaQGcfash+v9V453U4?=
 =?us-ascii?Q?xDCgh2LOJ8e8mNQpWzVbL8JULun7SbVwnX7rpI4iUSQ5?=
Content-Type: multipart/alternative;
	boundary="_000_DS7PR13MB46566CB2DD9F9B04C3A659B299919DS7PR13MB4656namp_"
MIME-Version: 1.0
X-OriginatorOrg: litmus.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR13MB4656.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1eb07c72-09e3-4bd9-7951-08d9a2cdc293
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2021 15:38:06.4960
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f58c6352-0fff-4b5d-a30b-2938e0f46152
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 KC/VEl7of+TSbXz7XnNNPN8lLKuqHQnpBvLylR9LyBX/kt8E5csh2+2EAY3hmgqLK2O4Rcgw/Vinl/f3N116jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3852
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Nov 2021 15:38:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55273

--_000_DS7PR13MB46566CB2DD9F9B04C3A659B299919DS7PR13MB4656namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Alexander,

The reason for running it in /srv/yocto is because this directory uses NFS =
caching. I will look into the possibility of running the build in $HOME ins=
tead.

I have also ran the strace command but it produces way too much output. I w=
ill do my best to sort through it and report back.

Regards,
Maksym

From: Alexander Kanavin<mailto:alex.kanavin@gmail.com>
Sent: November 4, 2021 4:03 PM
To: Maksym Iliev<mailto:maksym.iliev@litmus.io>
Cc: Yocto-mailing-list<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Bitbake build fails because of a python function

You don't often get email from alex.kanavin@gmail.com. Learn why this is im=
portant<http://aka.ms/LearnAboutSenderIdentification>
Just wondering, what it /srv/yocto? Can you build in your $HOME?

Otherwise, you can run bitbake under 'strace -ff -o strace-log ...' and try=
 to check exactly what syscall causes cpio to fail.

Alex

On Thu, 4 Nov 2021 at 20:44, Maksym Iliev <maksym.iliev@litmus.io<mailto:ma=
ksym.iliev@litmus.io>> wrote:

Dear Alexander,

Thanks a lot for responding. I've attached the log file.
The only valuable info I could find is the following piece at the end of th=
e log file. Could that be a potential cause for failures?

Deprecated external dependency generator is used!
create archive failed: cpio: write
WARNING: exit code 1 from a shell command.




Thanks in advance,

Maksym
From: Alexander Kanavin<mailto:alex.kanavin@gmail.com>
Sent: November 3, 2021 4:48 PM
To: Maksym Iliev<mailto:maksym.iliev@litmus.io>
Cc: Yocto-mailing-list<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Bitbake build fails because of a python function

You don't often get email from alex.kanavin@gmail.com<mailto:alex.kanavin@g=
mail.com>. Learn why this is important<http://aka.ms/LearnAboutSenderIdenti=
fication>
It's hard to say if we can't replicate the issue. Check /srv/yocto/build/tm=
p/work/corei7-64-poky-linux/perl/5.30.1-r0/temp/log.do_package_write_rpm, i=
t might have useful debugging info.

Alex



On Wed, 3 Nov 2021 at 21:45, Maksym Iliev via lists.yoctoproject.org<https:=
//nam02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.yoctopro=
ject.org%2F&data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7C72598081821c426e70d=
d08d99fce2ef9%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C6377165302043299=
26%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DnKoeCE%2FHySaxL0ZAkyRz455SVLDyUZSHjmQs3Cn=
ouY4%3D&reserved=3D0> <maksym.iliev=3Dlitmus.io@lists.yoctoproject.org<mail=
to:litmus.io@lists.yoctoproject.org>> wrote:

Hello guys. I am brand new to yocto and bitbake and I am looking for any he=
lp/advice/hints I can get. I have inherited someone else's code for buildin=
g yocto project images, but the bitbake fails with the following error:

ERROR: perl-5.30.1-r0 do_package_write_rpm: Error executing a python functi=
on in exec_func_python()

autogenerated:The stack trace of python calls that resulted in this excepti=
on/failure was: File: 'exec_func_python() autogenerated', lineno: 2, functi=
on: <module>

0001: ***

0002:do_package_rpm(d)

0003:

File: '/srv/yocto/poky/meta/classes/package_rpm.bbclass', lineno: 712, func=
tion: do_package_rpm

0708:

0709:    # Build the rpm package!

0710:    d.setVar('BUILDSPEC', cmd + \"\\n\" + cleanupcmd + \"\\n\")

0711:    d.setVarFlag('BUILDSPEC', 'func', '1')

0712:    bb.build.exec_func('BUILDSPEC', d)

0713:

0714:    if d.getVar('RPM_SIGN_PACKAGES') =3D=3D '1':

0715:        bb.build.exec_func(\"sign_rpm\", d)

0716:}

File: '/srv/yocto/poky/bitbake/lib/bb/build.py', lineno: 254, function: exe=
c_func

0250:    with bb.utils.fileslocked(lockfiles):

0251:    if ispython:

0252:            exec_func_python(func, d, runfile, cwd=3Dadir)

0253:    else: ***

0254:            exec_func_shell(func, d, runfile, cwd=3Dadir)

0255:

0256:    try:

0257:        curcwd =3D os.getcwd()

0258:    except:

File: '/srv/yocto/poky/bitbake/lib/bb/build.py', lineno: 455, function: exe=
c_func_shell

0451:    with open(fifopath, 'r+b', buffering=3D0) as fifo:

0452:        try:

0453:            bb.debug(2, \"Executing shell function %s\" % func)

0454:            with open(os.devnull, 'r+') as stdin, logfile: ***

0455:                bb.process.run(cmd, shell=3DFalse, stdin=3Dstdin, log=
=3Dlogfile, extrafiles=3D[(fifo,readfifo)])

0456:        finally:

0457:            os.unlink(fifopath)

0458:

0459:    bb.debug(2, \"Shell function %s finished\" % func)

File: '/srv/yocto/poky/bitbake/lib/bb/process.py', lineno: 184, function: r=
un

0180:

0181:    if pipe.returncode !=3D 0:

0182:        if log:

0183:            # Don't duplicate the output in the exception if logging i=
t ***

0184:            raise ExecutionError(cmd, pipe.returncode, None, None)

0185:        raise ExecutionError(cmd, pipe.returncode, stdout, stderr)

0186:    return stdout, stderr Exception: bb.process.ExecutionError: Execut=
ion of '/srv/yocto/build/tmp/work/corei7-64-poky-linux/perl/5.30.1-r0/temp/=
run.BUILDSPEC.35372' failed with exit code 1
Would anyone be able to point me in the right direction as to what could be=
 potentially causing this issue?

Thanks in advance,
Maksym
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#55234): https://lists.yoctoproject.org/g/yocto/message/=
55234<https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F55234&data=3D04%7C01%7Cmaksym=
.iliev%40litmus.io%7C72598081821c426e70dd08d99fce2ef9%7Cf58c63520fff4b5da30=
b2938e0f46152%7C1%7C0%7C637716530204339882%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi=
MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DI=
VVJ1N9850RSQEZHn3u%2FhN2pki2ZzE4BTYYJDnHxSvI%3D&reserved=3D0>
Mute This Topic: https://lists.yoctoproject.org/mt/86801772/1686489<https:/=
/nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctopro=
ject.org%2Fmt%2F86801772%2F1686489&data=3D04%7C01%7Cmaksym.iliev%40litmus.i=
o%7C72598081821c426e70dd08d99fce2ef9%7Cf58c63520fff4b5da30b2938e0f46152%7C1=
%7C0%7C637716530204349839%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQI=
joiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DLYpXeaKrpXQyePbVS5=
VJ0MXyM2zFuyhsVAM3RME15TE%3D&reserved=3D0>
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://nam02.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2=
Fg%2Fyocto%2Funsub&data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7C72598081821c=
426e70dd08d99fce2ef9%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C637716530=
204349839%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DubSBrD2vsrUxAi4Awa9QJmxR15Eco1o0pE=
6GbitPoZI%3D&reserved=3D0> [alex.kanavin@gmail.com<mailto:alex.kanavin@gmai=
l.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-



--_000_DS7PR13MB46566CB2DD9F9B04C3A659B299919DS7PR13MB4656namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:18.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Alexander,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The reason for running it in /srv/yocto is because t=
his directory uses NFS caching. I will look into the possibility of running=
 the build in $HOME instead.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also ran the strace command but it produces w=
ay too much output. I will do my best to sort through it and report back.<b=
r>
<br>
Regards,</p>
<p class=3D"MsoNormal">Maksym</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From: </b><a hr=
ef=3D"mailto:alex.kanavin@gmail.com">Alexander Kanavin</a><br>
<b>Sent: </b>November 4, 2021 4:03 PM<br>
<b>To: </b><a href=3D"mailto:maksym.iliev@litmus.io">Maksym Iliev</a><br>
<b>Cc: </b><a href=3D"mailto:yocto@lists.yoctoproject.org">Yocto-mailing-li=
st</a><br>
<b>Subject: </b>Re: [yocto] Bitbake build fails because of a python functio=
n</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt"></td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">You don't often get email from alex.kanavin@gmail.com.
<a href=3D"http://aka.ms/LearnAboutSenderIdentification">Learn why this is =
important</a><o:p></o:p></span></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;align:left">
</td>
</tr>
</tbody>
</table>
<div>
<div>
<div>
<p class=3D"MsoNormal">Just wondering, what it /srv/yocto? Can you build in=
 your $HOME?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Otherwise, you can run bitbake under 'strace -ff -o =
strace-log ...' and try to check exactly what syscall causes cpio to fail.<=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, 4 Nov 2021 at 20:44, Maksym Iliev &lt;<a hre=
f=3D"mailto:maksym.iliev@litmus.io">maksym.iliev@litmus.io</a>&gt; wrote:<o=
:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p>Dear Alexander,<br>
<br>
Thanks a lot for responding. I've attached the log file.<br>
The only valuable info I could find is the following piece at the end of th=
e log file. Could that be a potential cause for failures?</p>
<h2>Deprecated external dependency generator is used!<o:p></o:p></h2>
<h2>create archive failed: cpio: write<o:p></o:p></h2>
<h2>WARNING: exit code 1 from a shell command.<o:p></o:p></h2>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
<p>Thanks in advance,</p>
<p>Maksym</p>
<div style=3D"border:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0=
cm 0cm 0cm;border-color:currentcolor currentcolor">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b>From:
</b><a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">Alexander K=
anavin</a><br>
<b>Sent: </b>November 3, 2021 4:48 PM<br>
<b>To: </b><a href=3D"mailto:maksym.iliev@litmus.io" target=3D"_blank">Maks=
ym Iliev</a><br>
<b>Cc: </b><a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">Yocto-mailing-list</a><br>
<b>Subject: </b>Re: [yocto] Bitbake build fails because of a python functio=
n</p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%">
<tbody>
<tr>
<td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt 1.5pt;backgroun=
d-attachment:scroll;background-position-x:0%;background-position-y:0%">
</td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt;background-attachment:scroll;background-position-x:0%=
;background-position-y:0%">
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-wrap:=
around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:=
column;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#212121">You don't often get email from
<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gm=
ail.com</a>.
<a href=3D"http://aka.ms/LearnAboutSenderIdentification" target=3D"_blank">=
Learn why this is important</a></span><o:p></o:p></p>
</div>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt;background-attachment:scroll;background-position-x:0%;b=
ackground-position-y:0%">
</td>
</tr>
</tbody>
</table>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:white">It's hard to say if we can't replicate=
 the issue. Check /srv/yocto/build/tmp/work/corei7-64-poky-linux/perl/5.30.=
1-r0/temp/log.do_package_write_rpm, it
 might have useful debugging info.</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Alex<o:p></o:p></p>
</div>
<pre style=3D"margin-bottom:3.0pt;box-sizing:inherit;font-variant-ligatures=
:none;white-space:pre-wrap"><span style=3D"font-size:9.0pt;font-family:&quo=
t;Times New Roman&quot;,serif;color:#1D1C1D">&nbsp;</span></pre>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Wed, 3 Nov 2021 at 21:45, Maksym Iliev via
<a href=3D"https://nam02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.yoctoproject.org%2F&amp;data=3D04%7C01%7Cmaksym.iliev%40litmus.io%=
7C72598081821c426e70dd08d99fce2ef9%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7=
C0%7C637716530204329926%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjo=
iV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DnKoeCE%2FHySaxL0=
ZAkyRz455SVLDyUZSHjmQs3CnouY4%3D&amp;reserved=3D0" target=3D"_blank">
lists.yoctoproject.org</a> &lt;maksym.iliev=3D<a href=3D"mailto:litmus.io@l=
ists.yoctoproject.org" target=3D"_blank">litmus.io@lists.yoctoproject.org</=
a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;marg=
in-bottom:5.0pt;border-color:currentcolor currentcolor currentcolor rgb(204=
,204,204)">
<p>Hello guys. I am brand new to yocto and bitbake and I am looking for any=
 help/advice/hints I can get. I have inherited someone else's code for buil=
ding yocto project images, but the bitbake fails with the following error:<=
o:p></o:p></p>
<pre style=3D"margin-bottom:3.0pt;box-sizing:inherit;font-variant-ligatures=
:none;white-space:pre-wrap"><span style=3D"font-size:9.0pt;font-family:&quo=
t;Times New Roman&quot;,serif;color:#1D1C1D">ERROR: perl-5.30.1-r0 do_packa=
ge_write_rpm: Error executing a python function in exec_func_python() </spa=
n></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">autogenerated:The stack=
 trace of python calls that resulted in this exception/failure was: File: '=
exec_func_python() autogenerated', lineno: 2, function: &lt;module&gt;</spa=
n></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0001: *** </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0002:do_package_rpm(d)&=
nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0003:</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">File: '/srv/yocto/poky/=
meta/classes/package_rpm.bbclass', lineno: 712, function: do_package_rpm&nb=
sp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0708:&nbsp;&nbsp;&nbsp;=
&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0709:&nbsp;&nbsp;&nbsp;=
 # Build the rpm package!&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0710:&nbsp;&nbsp;&nbsp;=
 d.setVar('BUILDSPEC', cmd + \&quot;\\n\&quot; + cleanupcmd + \&quot;\\n\&q=
uot;)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0711:&nbsp;&nbsp;&nbsp;=
 d.setVarFlag('BUILDSPEC', 'func', '1')</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0712:&nbsp;&nbsp;&nbsp;=
 bb.build.exec_func('BUILDSPEC', d)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0713:&nbsp;&nbsp;&nbsp;=
&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0714:&nbsp;&nbsp;&nbsp;=
 if d.getVar('RPM_SIGN_PACKAGES') =3D=3D '1':</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0715:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; bb.build.exec_func(\&quot;sign_rpm\&quot;, d)&nbsp=
;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0716:}</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">File: '/srv/yocto/poky/=
bitbake/lib/bb/build.py', lineno: 254, function: exec_func&nbsp;&nbsp;&nbsp=
;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0250:&nbsp;&nbsp;&nbsp;=
 with bb.utils.fileslocked(lockfiles):&nbsp;&nbsp;&nbsp;&nbsp; </span></pre=
>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0251:&nbsp;&nbsp;&nbsp;=
 if ispython:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0252:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exec_func_python(func, d, =
runfile, cwd=3Dadir)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0253:&nbsp;&nbsp;&nbsp;=
 else: *** </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0254:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exec_func_shell(func, d, r=
unfile, cwd=3Dadir)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0255:&nbsp;&nbsp;&nbsp;=
&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0256:&nbsp;&nbsp;&nbsp;=
 try:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0257:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; curcwd =3D os.getcwd()&nbsp;&nbsp;&nbsp;&nbsp; </s=
pan></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0258:&nbsp;&nbsp;&nbsp;=
 except:</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">File: '/srv/yocto/poky/=
bitbake/lib/bb/build.py', lineno: 455, function: exec_func_shell&nbsp;&nbsp=
;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0451:&nbsp;&nbsp;&nbsp;=
 with open(fifopath, 'r+b', buffering=3D0) as fifo:&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0452:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; try:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0453:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.debug(2, \&quot;Executi=
ng shell function %s\&quot; % func)&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0454:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with open(os.devnull, 'r+'=
) as stdin, logfile: *** </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0455:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb=
.process.run(cmd, shell=3DFalse, stdin=3Dstdin, log=3Dlogfile, extrafiles=
=3D[(fifo,readfifo)])&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0456:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; finally:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0457:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.unlink(fifopath)&nbsp;&=
nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0458:&nbsp;&nbsp;&nbsp;=
&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0459:&nbsp;&nbsp;&nbsp;=
 bb.debug(2, \&quot;Shell function %s finished\&quot; % func)</span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">File: '/srv/yocto/poky/=
bitbake/lib/bb/process.py', lineno: 184, function: run&nbsp;&nbsp;&nbsp;&nb=
sp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0180:&nbsp;&nbsp;&nbsp;=
&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0181:&nbsp;&nbsp;&nbsp;=
 if pipe.returncode !=3D 0:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0182:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; if log:&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0183:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Don't duplicate the outp=
ut in the exception if logging it *** </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0184:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise ExecutionError(cmd, =
pipe.returncode, None, None)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0185:&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raise ExecutionError(cmd, pipe.returncode, stdout,=
 stderr)&nbsp;&nbsp;&nbsp;&nbsp; </span></pre>
<pre style=3D"margin-bottom:3.0pt"><span style=3D"font-size:9.0pt;font-fami=
ly:&quot;Times New Roman&quot;,serif;color:#1D1C1D">0186:&nbsp;&nbsp;&nbsp;=
 return stdout, stderr Exception: bb.process.ExecutionError: Execution of '=
/srv/yocto/build/tmp/work/corei7-64-poky-linux/perl/5.30.1-r0/temp/run.BUIL=
DSPEC.35372' failed with exit code 1</span></pre>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t;margin-left:4.8pt">
Would anyone be able to point me in the right direction as to what could be=
 potentially causing this issue?<br>
<br>
Thanks in advance,<br>
Maksym <br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55234): <a href=3D"https://nam02.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F55234&amp;data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7C72598081821c426e7=
0dd08d99fce2ef9%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C63771653020433=
9882%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DIVVJ1N9850RSQEZHn3u%2FhN2pki2ZzE4BT=
YYJDnHxSvI%3D&amp;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/55234</a><br>
Mute This Topic: <a href=3D"https://nam02.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F86801772%2F1686489&amp;d=
ata=3D04%7C01%7Cmaksym.iliev%40litmus.io%7C72598081821c426e70dd08d99fce2ef9=
%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C637716530204349839%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C1000&amp;sdata=3DLYpXeaKrpXQyePbVS5VJ0MXyM2zFuyhsVAM3RME15TE%3D&amp=
;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/mt/86801772/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://nam02.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D04%7=
C01%7Cmaksym.iliev%40litmus.io%7C72598081821c426e70dd08d99fce2ef9%7Cf58c635=
20fff4b5da30b2938e0f46152%7C1%7C0%7C637716530204349839%7CUnknown%7CTWFpbGZs=
b3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C10=
00&amp;sdata=3DubSBrD2vsrUxAi4Awa9QJmxR15Eco1o0pE6GbitPoZI%3D&amp;reserved=
=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</p>
</div>
</div>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:4.8pt">
&nbsp;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DS7PR13MB46566CB2DD9F9B04C3A659B299919DS7PR13MB4656namp_--

