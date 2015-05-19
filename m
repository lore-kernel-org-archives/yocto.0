Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0AD5E009B8; Tue, 19 May 2015 00:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E6C6E00998
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 00:07:48 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Tue, 19 May 2015 12:37:48 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Tue, 19 May 2015 12:37:42 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Tue, 19 May 2015 12:37:42 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Thread-Topic: [yocto] Issue with yocto ADT
Thread-Index: AQHQjvGS80lL5pX7tEePuV/Y1Ag/NZ18xwuAgAATywj///ZkAIAAFVU6///3i4CAABFuWIAEQy9NgACr7wCAABkPjYAA1/wAgAAVlwI=
Date: Tue, 19 May 2015 07:07:41 +0000
Message-ID: <1432019239480.90156@inedasystems.com>
References: <1431682376634.76952@inedasystems.com> ,
	<1431686123.6150.2.camel@intel.com>
	<1431686858269.81704@inedasystems.com> ,
	<1431688310.6150.4.camel@intel.com>
	<1431689589890.85414@inedasystems.com>
	, <1431691075.6150.6.camel@intel.com>,
	<1431691274788.8264@inedasystems.com>
	<1431925643423.13631@inedasystems.com>,
	<1431966070.3387.3.camel@intel.com>
	<9fb2bdd0aab24dcdaeebd7e73d2dfcb4@SOC-EXCH-02.invecas.local>,
	<1432017834.9202.26.camel@intel.com>
In-Reply-To: <1432017834.9202.26.camel@intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Ramakrishna Chatram <Ramakrishna.Chatram@inedasystems.com>,
	Surya Dommeti <Venkatasuryanarayana.Dommeti@inedasystems.com>
Subject: Re: Issue with yocto ADT
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
X-List-Received-Date: Tue, 19 May 2015 07:07:52 -0000
X-Groupsio-MsgNum: 24885
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_143201923948090156inedasystemscom_"

--_002_143201923948090156inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Todor,=0A=
=0A=
For not working scenario there is no makefile created.=0A=
=0A=
For working scenario using build directory sysroot makefiles are created.=
=0A=
=0A=
I attaching the makefile for working scenario.=0A=
=0A=
Regards,=0A=
=0A=
Raghavendra K. =0A=
________________________________________=0A=
From: Minchev, Todor <todor.minchev@intel.com>=0A=
Sent: Tuesday, May 19, 2015 12:13 PM=0A=
To: Raghavendra Kakarla=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Issue with yocto ADT=0A=
=0A=
On Mon, 2015-05-18 at 16:55 +0000, Raghavendra Kakarla wrote:=0A=
> Hi Todor,=0A=
>=0A=
> I created four more new projects.=0A=
>=0A=
> For all the projects I gives error like this only.=0A=
=0A=
Is the error message the same as the original one you posted about a=0A=
missing make `all` target?=0A=
=0A=
> Can send those projects make files?=0A=
=0A=
Please share both your working and non-working Makefiles.=0A=
=0A=
>=0A=
> But when I give the sysroot path in eclipse to the poky/build/tmp/sysroot=
/machine it worked properly.=0A=
>=0A=
> When we give the extracted sysroot it gives problem.=0A=
> Regards,=0A=
> Raghavendra.=0A=
> ________________________________________=0A=
> From: Minchev, Todor [todor.minchev@intel.com]=0A=
> Sent: Monday, May 18, 2015 9:51 PM=0A=
> To: Raghavendra Kakarla=0A=
> Cc: yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] Issue with yocto ADT=0A=
>=0A=
> Hello Raghavendra,=0A=
>=0A=
> On Mon, 2015-05-18 at 05:07 +0000, Raghavendra Kakarla wrote:=0A=
> > Hi Todor,=0A=
> >=0A=
> > Could you please let me know the cause for the issue.=0A=
> Please pastebin your Makefile and share the pastebin link.=0A=
>=0A=
> Seem like your project is corrupt and the Makefile is not generated=0A=
> correctly.=0A=
>=0A=
> Have you tried to delete the project and create a new one?=0A=
>=0A=
> > Thanks in advance.=0A=
> >=0A=
> > Regards,=0A=
> > Raghavendra K.=0A=
> >=0A=
> >=0A=
> > ________________________________________=0A=
> > From: Raghavendra Kakarla=0A=
> > Sent: Friday, May 15, 2015 5:31 PM=0A=
> > To: Minchev, Todor=0A=
> > Cc: yocto@yoctoproject.org=0A=
> > Subject: RE: [yocto] Issue with yocto ADT=0A=
> >=0A=
> > Hi Todor,=0A=
> >=0A=
> > It is provided by the Yocto eclipse plugin itself.=0A=
> >=0A=
> > Regards,=0A=
> > Raghavendra.=0A=
> > ________________________________________=0A=
> > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > Sent: Friday, May 15, 2015 5:27 PM=0A=
> > To: Raghavendra Kakarla=0A=
> > Cc: yocto@yoctoproject.org=0A=
> > Subject: Re: [yocto] Issue with yocto ADT=0A=
> >=0A=
> > On Fri, 2015-05-15 at 11:33 +0000, Raghavendra Kakarla wrote:=0A=
> > > Hi Todor,=0A=
> > >=0A=
> > > It is an autotool based example.=0A=
> > > It is not generated makefile itself.=0A=
> > >=0A=
> >=0A=
> > Is it an example you created yourself or is it the autotools C Hello=0A=
> > World template provided by the Yocto Eclipse Plug-in.=0A=
> >=0A=
> > > I attached the makefile.in and makefile.am file to the paste bin.=0A=
> >=0A=
> > Could you please paste the Makefile and share the pastebin link?=0A=
> >=0A=
> > > Thanks,=0A=
> > >=0A=
> > > Raghavendra.=0A=
> > >=0A=
> > >=0A=
> > > ________________________________________=0A=
> > > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > > Sent: Friday, May 15, 2015 4:41 PM=0A=
> > > To: Raghavendra Kakarla=0A=
> > > Cc: yocto@yoctoproject.org=0A=
> > > Subject: Re: [yocto] Issue with yocto ADT=0A=
> > >=0A=
> > > Hello Raghavendra,=0A=
> > >=0A=
> > > Could you please pastebin the makefile from your project?=0A=
> > >=0A=
> > > http://pastebin.com/=0A=
> > >=0A=
> > > Cheers,=0A=
> > > Todor=0A=
> > >=0A=
> > > On Fri, 2015-05-15 at 10:47 +0000, Raghavendra Kakarla wrote:=0A=
> > > > Hi Todor,=0A=
> > > >=0A=
> > > > Thank you for your  reply.=0A=
> > > >=0A=
> > > > By default we have the setting like this only.=0A=
> > > >=0A=
> > > > But we got the error.=0A=
> > > >=0A=
> > > > Thanks,=0A=
> > > > Raghavendra.=0A=
> > > > ________________________________________=0A=
> > > > From: Minchev, Todor <todor.minchev@intel.com>=0A=
> > > > Sent: Friday, May 15, 2015 4:05 PM=0A=
> > > > To: Raghavendra Kakarla=0A=
> > > > Cc: yocto@yoctoproject.org=0A=
> > > > Subject: Re: [yocto] Issue with yocto ADT=0A=
> > > >=0A=
> > > > Hello Raghavendra,=0A=
> > > >=0A=
> > > > Please try the following:=0A=
> > > >=0A=
> > > > Right click on your project - Properties - C/C++ Build - Select the=
=0A=
> > > > 'Behavior' tab - untick 'Build on resource save' and remove 'all' f=
rom=0A=
> > > > the 'Build' field=0A=
> > > >=0A=
> > > > Cheers,=0A=
> > > > Todor=0A=
> > > >=0A=
> > > > On Fri, 2015-05-15 at 09:32 +0000, Raghavendra Kakarla wrote:=0A=
> > > > > Hi All,=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > I have problem with the ADT while i am building the autotool exam=
ple=0A=
> > > > > helloword project which is given in the "yocto ADT autotool proje=
ct".=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > Could you please help me in resolving this issue.=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > I followed the following steps for installing the adt in my=0A=
> > > > > development PC:=0A=
> > > > >=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > I built the toolchain using the following command:=0A=
> > > > >=0A=
> > > > > $cd ~/poky=0A=
> > > > > $source ./oe-init-build-env=0A=
> > > > > $bitbake meta-ide-support=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > Extract the root file system by using the following commands:=0A=
> > > > >=0A=
> > > > > $cd ~=0A=
> > > > > $source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux=
=0A=
> > > > > $runqemu-extract-sdk \=0A=
> > > > >         ~/poky/build/tmp/deploy/images/arqlyn/=0A=
> > > > > core-image-minimal-dhruwa_ioe-20150511102759.rootfs.tar.bz2\=0A=
> > > > >         $HOME/arqlyn=0A=
> > > > >=0A=
> > > > > I followed the command given in the yocto project dev-manual for=
=0A=
> > > > > installing eclipse and adding yocto plugin to eclipse.=0A=
> > > > >=0A=
> > > > > I Gave the following data to the eclipse for configuring the=0A=
> > > > > cross-compiler options:=0A=
> > > > >=0A=
> > > > > 1. I select the "Build System Derived Toolchain"=0A=
> > > > > 2.point the toolchain path to "home/testuser/poky/build"=0A=
> > > > > 3.gave sysroot path to /home/testuser/arqlyn=0A=
> > > > >=0A=
> > > > > After entered this information I got the my machine-name in the=
=0A=
> > > > > "select the target architecture" filed.=0A=
> > > > >=0A=
> > > > > After this I create a autotool support project and tried to build=
 but=0A=
> > > > > it gives the error.=0A=
> > > > >=0A=
> > > > > Regards,=0A=
> > > > >=0A=
> > > > > Raghavendra.=0A=
> > > > >=0A=
> > > > >=0A=
> > > > >=0A=
> > > > >=0A=
> > > > > _______________________________________________=0A=
> > > > > yocto mailing list=0A=
> > > > > yocto@yoctoproject.org=0A=
> > > > > https://lists.yoctoproject.org/listinfo/yocto=0A=
> > > >=0A=
> > >=0A=
> >=0A=
>=0A=
=0A=

--_002_143201923948090156inedasystemscom_
Content-Type: application/octet-stream; name="Makefile"
Content-Description: Makefile
Content-Disposition: attachment; filename="Makefile"; size=25779;
	creation-date="Tue, 19 May 2015 07:06:43 GMT";
	modification-date="Tue, 19 May 2015 07:06:43 GMT"
Content-Transfer-Encoding: base64

IyBNYWtlZmlsZS5pbiBnZW5lcmF0ZWQgYnkgYXV0b21ha2UgMS4xNC4xIGZyb20gTWFrZWZpbGUu
YW0uCiMgTWFrZWZpbGUuICBHZW5lcmF0ZWQgZnJvbSBNYWtlZmlsZS5pbiBieSBjb25maWd1cmUu
CgojIENvcHlyaWdodCAoQykgMTk5NC0yMDEzIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgSW5j
LgoKIyBUaGlzIE1ha2VmaWxlLmluIGlzIGZyZWUgc29mdHdhcmU7IHRoZSBGcmVlIFNvZnR3YXJl
IEZvdW5kYXRpb24KIyBnaXZlcyB1bmxpbWl0ZWQgcGVybWlzc2lvbiB0byBjb3B5IGFuZC9vciBk
aXN0cmlidXRlIGl0LAojIHdpdGggb3Igd2l0aG91dCBtb2RpZmljYXRpb25zLCBhcyBsb25nIGFz
IHRoaXMgbm90aWNlIGlzIHByZXNlcnZlZC4KCiMgVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVk
IGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCiMgYnV0IFdJVEhPVVQgQU5ZIFdB
UlJBTlRZLCB0byB0aGUgZXh0ZW50IHBlcm1pdHRlZCBieSBsYXc7IHdpdGhvdXQKIyBldmVuIHRo
ZSBpbXBsaWVkIHdhcnJhbnR5IG9mIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBCiMg
UEFSVElDVUxBUiBQVVJQT1NFLgoKCgphbV9faXNfZ251X21ha2UgPSB0ZXN0IC1uICckKE1BS0VG
SUxFX0xJU1QpJyAmJiB0ZXN0IC1uICckKE1BS0VMRVZFTCknCmFtX19tYWtlX3J1bm5pbmdfd2l0
aF9vcHRpb24gPSBcCiAgY2FzZSAkJHt0YXJnZXRfb3B0aW9uLX0gaW4gXAogICAgICA/KSA7OyBc
CiAgICAgICopIGVjaG8gImFtX19tYWtlX3J1bm5pbmdfd2l0aF9vcHRpb246IGludGVybmFsIGVy
cm9yOiBpbnZhbGlkIiBcCiAgICAgICAgICAgICAgInRhcmdldCBvcHRpb24gJyQke3RhcmdldF9v
cHRpb24tfScgc3BlY2lmaWVkIiA+JjI7IFwKICAgICAgICAgZXhpdCAxOzsgXAogIGVzYWM7IFwK
ICBoYXNfb3B0PW5vOyBcCiAgc2FuZV9tYWtlZmxhZ3M9JCRNQUtFRkxBR1M7IFwKICBpZiAkKGFt
X19pc19nbnVfbWFrZSk7IHRoZW4gXAogICAgc2FuZV9tYWtlZmxhZ3M9JCRNRkxBR1M7IFwKICBl
bHNlIFwKICAgIGNhc2UgJCRNQUtFRkxBR1MgaW4gXAogICAgICAqXFxbXCBcCV0qKSBcCiAgICAg
ICAgYnM9XFw7IFwKICAgICAgICBzYW5lX21ha2VmbGFncz1gcHJpbnRmICclc1xuJyAiJCRNQUtF
RkxBR1MiIFwKICAgICAgICAgIHwgc2VkICJzLyQkYnMkJGJzWyQkYnMgJCRicwldKi8vZyJgOzsg
XAogICAgZXNhYzsgXAogIGZpOyBcCiAgc2tpcF9uZXh0PW5vOyBcCiAgc3RyaXBfdHJhaWxvcHQg
KCkgXAogIHsgXAogICAgZmxnPWBwcmludGYgJyVzXG4nICIkJGZsZyIgfCBzZWQgInMvJCQxLiok
JC8vImA7IFwKICB9OyBcCiAgZm9yIGZsZyBpbiAkJHNhbmVfbWFrZWZsYWdzOyBkbyBcCiAgICB0
ZXN0ICQkc2tpcF9uZXh0ID0geWVzICYmIHsgc2tpcF9uZXh0PW5vOyBjb250aW51ZTsgfTsgXAog
ICAgY2FzZSAkJGZsZyBpbiBcCiAgICAgICo9KnwtLSopIGNvbnRpbnVlOzsgXAogICAgICAgIC0q
SSkgc3RyaXBfdHJhaWxvcHQgJ0knOyBza2lwX25leHQ9eWVzOzsgXAogICAgICAtKkk/Kikgc3Ry
aXBfdHJhaWxvcHQgJ0knOzsgXAogICAgICAgIC0qTykgc3RyaXBfdHJhaWxvcHQgJ08nOyBza2lw
X25leHQ9eWVzOzsgXAogICAgICAtKk8/Kikgc3RyaXBfdHJhaWxvcHQgJ08nOzsgXAogICAgICAg
IC0qbCkgc3RyaXBfdHJhaWxvcHQgJ2wnOyBza2lwX25leHQ9eWVzOzsgXAogICAgICAtKmw/Kikg
c3RyaXBfdHJhaWxvcHQgJ2wnOzsgXAogICAgICAtW2RFRG1dKSBza2lwX25leHQ9eWVzOzsgXAog
ICAgICAtW0pUXSkgc2tpcF9uZXh0PXllczs7IFwKICAgIGVzYWM7IFwKICAgIGNhc2UgJCRmbGcg
aW4gXAogICAgICAqJCR0YXJnZXRfb3B0aW9uKikgaGFzX29wdD15ZXM7IGJyZWFrOzsgXAogICAg
ZXNhYzsgXAogIGRvbmU7IFwKICB0ZXN0ICQkaGFzX29wdCA9IHllcwphbV9fbWFrZV9kcnlydW4g
PSAodGFyZ2V0X29wdGlvbj1uOyAkKGFtX19tYWtlX3J1bm5pbmdfd2l0aF9vcHRpb24pKQphbV9f
bWFrZV9rZWVwZ29pbmcgPSAodGFyZ2V0X29wdGlvbj1rOyAkKGFtX19tYWtlX3J1bm5pbmdfd2l0
aF9vcHRpb24pKQpwa2dkYXRhZGlyID0gJChkYXRhZGlyKS90ZXN0MTYKcGtnaW5jbHVkZWRpciA9
ICQoaW5jbHVkZWRpcikvdGVzdDE2CnBrZ2xpYmRpciA9ICQobGliZGlyKS90ZXN0MTYKcGtnbGli
ZXhlY2RpciA9ICQobGliZXhlY2RpcikvdGVzdDE2CmFtX19jZCA9IENEUEFUSD0iJCR7WlNIX1ZF
UlNJT04rLn0kKFBBVEhfU0VQQVJBVE9SKSIgJiYgY2QKaW5zdGFsbF9zaF9EQVRBID0gJChpbnN0
YWxsX3NoKSAtYyAtbSA2NDQKaW5zdGFsbF9zaF9QUk9HUkFNID0gJChpbnN0YWxsX3NoKSAtYwpp
bnN0YWxsX3NoX1NDUklQVCA9ICQoaW5zdGFsbF9zaCkgLWMKSU5TVEFMTF9IRUFERVIgPSAkKElO
U1RBTExfREFUQSkKdHJhbnNmb3JtID0gJChwcm9ncmFtX3RyYW5zZm9ybV9uYW1lKQpOT1JNQUxf
SU5TVEFMTCA9IDoKUFJFX0lOU1RBTEwgPSA6ClBPU1RfSU5TVEFMTCA9IDoKTk9STUFMX1VOSU5T
VEFMTCA9IDoKUFJFX1VOSU5TVEFMTCA9IDoKUE9TVF9VTklOU1RBTEwgPSA6CmJ1aWxkX3RyaXBs
ZXQgPSB4ODZfNjQtcGMtbGludXgtZ251Cmhvc3RfdHJpcGxldCA9IG1pcHNlbC1wb2t5LWxpbnV4
LWdudQpzdWJkaXIgPSAuCkRJU1RfQ09NTU9OID0gSU5TVEFMTCBORVdTIFJFQURNRSBBVVRIT1JT
IENoYW5nZUxvZyBcCgkkKHNyY2RpcikvTWFrZWZpbGUuaW4gJChzcmNkaXIpL01ha2VmaWxlLmFt
IFwKCSQodG9wX3NyY2RpcikvY29uZmlndXJlICQoYW1fX2NvbmZpZ3VyZV9kZXBzKSBcCgkkKHNy
Y2RpcikvY29uZmlnLmguaW4gQ09QWUlORyBjb21waWxlIGNvbmZpZy5ndWVzcyBjb25maWcuc3Vi
IFwKCWluc3RhbGwtc2ggbWlzc2luZyBsdG1haW4uc2gKQUNMT0NBTF9NNCA9ICQodG9wX3NyY2Rp
cikvYWNsb2NhbC5tNAphbV9fYWNsb2NhbF9tNF9kZXBzID0gJCh0b3Bfc3JjZGlyKS9jb25maWd1
cmUuYWMKYW1fX2NvbmZpZ3VyZV9kZXBzID0gJChhbV9fYWNsb2NhbF9tNF9kZXBzKSAkKENPTkZJ
R1VSRV9ERVBFTkRFTkNJRVMpIFwKCSQoQUNMT0NBTF9NNCkKYW1fX0NPTkZJR19ESVNUQ0xFQU5f
RklMRVMgPSBjb25maWcuc3RhdHVzIGNvbmZpZy5jYWNoZSBjb25maWcubG9nIFwKIGNvbmZpZ3Vy
ZS5saW5lbm8gY29uZmlnLnN0YXR1cy5saW5lbm8KbWtpbnN0YWxsZGlycyA9ICQoaW5zdGFsbF9z
aCkgLWQKQ09ORklHX0hFQURFUiA9IGNvbmZpZy5oCkNPTkZJR19DTEVBTl9GSUxFUyA9CkNPTkZJ
R19DTEVBTl9WUEFUSF9GSUxFUyA9CkFNX1ZfUCA9ICQoYW1fX3ZfUF8kKFYpKQphbV9fdl9QXyA9
ICQoYW1fX3ZfUF8kKEFNX0RFRkFVTFRfVkVSQk9TSVRZKSkKYW1fX3ZfUF8wID0gZmFsc2UKYW1f
X3ZfUF8xID0gOgpBTV9WX0dFTiA9ICQoYW1fX3ZfR0VOXyQoVikpCmFtX192X0dFTl8gPSAkKGFt
X192X0dFTl8kKEFNX0RFRkFVTFRfVkVSQk9TSVRZKSkKYW1fX3ZfR0VOXzAgPSBAZWNobyAiICBH
RU4gICAgICIgJEA7CmFtX192X0dFTl8xID0gCkFNX1ZfYXQgPSAkKGFtX192X2F0XyQoVikpCmFt
X192X2F0XyA9ICQoYW1fX3ZfYXRfJChBTV9ERUZBVUxUX1ZFUkJPU0lUWSkpCmFtX192X2F0XzAg
PSBACmFtX192X2F0XzEgPSAKU09VUkNFUyA9CkRJU1RfU09VUkNFUyA9ClJFQ1VSU0lWRV9UQVJH
RVRTID0gYWxsLXJlY3Vyc2l2ZSBjaGVjay1yZWN1cnNpdmUgY3Njb3BlbGlzdC1yZWN1cnNpdmUg
XAoJY3RhZ3MtcmVjdXJzaXZlIGR2aS1yZWN1cnNpdmUgaHRtbC1yZWN1cnNpdmUgaW5mby1yZWN1
cnNpdmUgXAoJaW5zdGFsbC1kYXRhLXJlY3Vyc2l2ZSBpbnN0YWxsLWR2aS1yZWN1cnNpdmUgXAoJ
aW5zdGFsbC1leGVjLXJlY3Vyc2l2ZSBpbnN0YWxsLWh0bWwtcmVjdXJzaXZlIFwKCWluc3RhbGwt
aW5mby1yZWN1cnNpdmUgaW5zdGFsbC1wZGYtcmVjdXJzaXZlIFwKCWluc3RhbGwtcHMtcmVjdXJz
aXZlIGluc3RhbGwtcmVjdXJzaXZlIGluc3RhbGxjaGVjay1yZWN1cnNpdmUgXAoJaW5zdGFsbGRp
cnMtcmVjdXJzaXZlIHBkZi1yZWN1cnNpdmUgcHMtcmVjdXJzaXZlIFwKCXRhZ3MtcmVjdXJzaXZl
IHVuaW5zdGFsbC1yZWN1cnNpdmUKYW1fX2Nhbl9ydW5faW5zdGFsbGluZm8gPSBcCiAgY2FzZSAk
JEFNX1VQREFURV9JTkZPX0RJUiBpbiBcCiAgICBufG5vfE5PKSBmYWxzZTs7IFwKICAgICopIChp
bnN0YWxsLWluZm8gLS12ZXJzaW9uKSA+L2Rldi9udWxsIDI+JjE7OyBcCiAgZXNhYwpSRUNVUlNJ
VkVfQ0xFQU5fVEFSR0VUUyA9IG1vc3RseWNsZWFuLXJlY3Vyc2l2ZSBjbGVhbi1yZWN1cnNpdmUJ
XAogIGRpc3RjbGVhbi1yZWN1cnNpdmUgbWFpbnRhaW5lci1jbGVhbi1yZWN1cnNpdmUKYW1fX3Jl
Y3Vyc2l2ZV90YXJnZXRzID0gXAogICQoUkVDVVJTSVZFX1RBUkdFVFMpIFwKICAkKFJFQ1VSU0lW
RV9DTEVBTl9UQVJHRVRTKSBcCiAgJChhbV9fZXh0cmFfcmVjdXJzaXZlX3RhcmdldHMpCkFNX1JF
Q1VSU0lWRV9UQVJHRVRTID0gJChhbV9fcmVjdXJzaXZlX3RhcmdldHM6LXJlY3Vyc2l2ZT0pIFRB
R1MgQ1RBR1MgXAoJY3Njb3BlIGRpc3RkaXIgZGlzdCBkaXN0LWFsbCBkaXN0Y2hlY2sKYW1fX3Rh
Z2dlZF9maWxlcyA9ICQoSEVBREVSUykgJChTT1VSQ0VTKSAkKFRBR1NfRklMRVMpIFwKCSQoTElT
UCljb25maWcuaC5pbgojIFJlYWQgYSBsaXN0IG9mIG5ld2xpbmUtc2VwYXJhdGVkIHN0cmluZ3Mg
ZnJvbSB0aGUgc3RhbmRhcmQgaW5wdXQsCiMgYW5kIHByaW50IGVhY2ggb2YgdGhlbSBvbmNlLCB3
aXRob3V0IGR1cGxpY2F0ZXMuICBJbnB1dCBvcmRlciBpcwojICpub3QqIHByZXNlcnZlZC4KYW1f
X3VuaXF1aWZ5X2lucHV0ID0gJChBV0spICdcCiAgQkVHSU4geyBub25lbXB0eSA9IDA7IH0gXAog
IHsgaXRlbXNbJCQwXSA9IDE7IG5vbmVtcHR5ID0gMTsgfSBcCiAgRU5EIHsgaWYgKG5vbmVtcHR5
KSB7IGZvciAoaSBpbiBpdGVtcykgcHJpbnQgaTsgfTsgfSBcCicKIyBNYWtlIHN1cmUgdGhlIGxp
c3Qgb2Ygc291cmNlcyBpcyB1bmlxdWUuICBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlLAojIGUu
Zy4sIHRoZSBzYW1lIHNvdXJjZSBmaWxlIG1pZ2h0IGJlIHNoYXJlZCBhbW9uZyBfU09VUkNFUyB2
YXJpYWJsZXMKIyBmb3IgZGlmZmVyZW50IHByb2dyYW1zL2xpYnJhcmllcy4KYW1fX2RlZmluZV91
bmlxX3RhZ2dlZF9maWxlcyA9IFwKICBsaXN0PSckKGFtX190YWdnZWRfZmlsZXMpJzsgXAogIHVu
aXF1ZT1gZm9yIGkgaW4gJCRsaXN0OyBkbyBcCiAgICBpZiB0ZXN0IC1mICIkJGkiOyB0aGVuIGVj
aG8gJCRpOyBlbHNlIGVjaG8gJChzcmNkaXIpLyQkaTsgZmk7IFwKICBkb25lIHwgJChhbV9fdW5p
cXVpZnlfaW5wdXQpYApFVEFHUyA9IGV0YWdzCkNUQUdTID0gY3RhZ3MKQ1NDT1BFID0gY3Njb3Bl
CkRJU1RfU1VCRElSUyA9ICQoU1VCRElSUykKRElTVEZJTEVTID0gJChESVNUX0NPTU1PTikgJChE
SVNUX1NPVVJDRVMpICQoVEVYSU5GT1MpICQoRVhUUkFfRElTVCkKZGlzdGRpciA9ICQoUEFDS0FH
RSktJChWRVJTSU9OKQp0b3BfZGlzdGRpciA9ICQoZGlzdGRpcikKYW1fX3JlbW92ZV9kaXN0ZGly
ID0gXAogIGlmIHRlc3QgLWQgIiQoZGlzdGRpcikiOyB0aGVuIFwKICAgIGZpbmQgIiQoZGlzdGRp
cikiIC10eXBlIGQgISAtcGVybSAtMjAwIC1leGVjIGNobW9kIHUrdyB7fSAnOycgXAogICAgICAm
JiBybSAtcmYgIiQoZGlzdGRpcikiIFwKICAgICAgfHwgeyBzbGVlcCA1ICYmIHJtIC1yZiAiJChk
aXN0ZGlyKSI7IH07IFwKICBlbHNlIDo7IGZpCmFtX19wb3N0X3JlbW92ZV9kaXN0ZGlyID0gJChh
bV9fcmVtb3ZlX2Rpc3RkaXIpCmFtX19yZWxhdGl2aXplID0gXAogIGRpcjA9YHB3ZGA7IFwKICBz
ZWRfZmlyc3Q9J3MsXlwoW14vXSpcKS8uKiQkLFwxLCc7IFwKICBzZWRfcmVzdD0ncyxeW14vXSov
KiwsJzsgXAogIHNlZF9sYXN0PSdzLF4uKi9cKFteL10qXCkkJCxcMSwnOyBcCiAgc2VkX2J1dGxh
c3Q9J3MsLypbXi9dKiQkLCwnOyBcCiAgd2hpbGUgdGVzdCAtbiAiJCRkaXIxIjsgZG8gXAogICAg
Zmlyc3Q9YGVjaG8gIiQkZGlyMSIgfCBzZWQgLWUgIiQkc2VkX2ZpcnN0ImA7IFwKICAgIGlmIHRl
c3QgIiQkZmlyc3QiICE9ICIuIjsgdGhlbiBcCiAgICAgIGlmIHRlc3QgIiQkZmlyc3QiID0gIi4u
IjsgdGhlbiBcCiAgICAgICAgZGlyMj1gZWNobyAiJCRkaXIwIiB8IHNlZCAtZSAiJCRzZWRfbGFz
dCJgLyIkJGRpcjIiOyBcCiAgICAgICAgZGlyMD1gZWNobyAiJCRkaXIwIiB8IHNlZCAtZSAiJCRz
ZWRfYnV0bGFzdCJgOyBcCiAgICAgIGVsc2UgXAogICAgICAgIGZpcnN0Mj1gZWNobyAiJCRkaXIy
IiB8IHNlZCAtZSAiJCRzZWRfZmlyc3QiYDsgXAogICAgICAgIGlmIHRlc3QgIiQkZmlyc3QyIiA9
ICIkJGZpcnN0IjsgdGhlbiBcCiAgICAgICAgICBkaXIyPWBlY2hvICIkJGRpcjIiIHwgc2VkIC1l
ICIkJHNlZF9yZXN0ImA7IFwKICAgICAgICBlbHNlIFwKICAgICAgICAgIGRpcjI9Ii4uLyQkZGly
MiI7IFwKICAgICAgICBmaTsgXAogICAgICAgIGRpcjA9IiQkZGlyMCIvIiQkZmlyc3QiOyBcCiAg
ICAgIGZpOyBcCiAgICBmaTsgXAogICAgZGlyMT1gZWNobyAiJCRkaXIxIiB8IHNlZCAtZSAiJCRz
ZWRfcmVzdCJgOyBcCiAgZG9uZTsgXAogIHJlbGRpcj0iJCRkaXIyIgpESVNUX0FSQ0hJVkVTID0g
JChkaXN0ZGlyKS50YXIuZ3oKR1pJUF9FTlYgPSAtLWJlc3QKRElTVF9UQVJHRVRTID0gZGlzdC1n
emlwCmRpc3R1bmluc3RhbGxjaGVja19saXN0ZmlsZXMgPSBmaW5kIC4gLXR5cGUgZiAtcHJpbnQK
YW1fX2Rpc3R1bmluc3RhbGxjaGVja19saXN0ZmlsZXMgPSAkKGRpc3R1bmluc3RhbGxjaGVja19s
aXN0ZmlsZXMpIFwKICB8IHNlZCAnc3xeXC4vfCQocHJlZml4KS98JyB8IGdyZXAgLXYgJyQoaW5m
b2RpcikvZGlyJCQnCmRpc3RjbGVhbmNoZWNrX2xpc3RmaWxlcyA9IGZpbmQgLiAtdHlwZSBmIC1w
cmludApBQ0xPQ0FMID0gJHtTSEVMTH0gL2hvbWUvdGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNi9t
aXNzaW5nIGFjbG9jYWwtMS4xNApBTVRBUiA9ICQke1RBUi10YXJ9CkFNX0RFRkFVTFRfVkVSQk9T
SVRZID0gMQpBUiA9IG1pcHNlbC1wb2t5LWxpbnV4LWFyCkFVVE9DT05GID0gJHtTSEVMTH0gL2hv
bWUvdGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNi9taXNzaW5nIGF1dG9jb25mCkFVVE9IRUFERVIg
PSAke1NIRUxMfSAvaG9tZS90ZXN0dXNlci93b3Jrc3BhY2UvdGVzdDE2L21pc3NpbmcgYXV0b2hl
YWRlcgpBVVRPTUFLRSA9ICR7U0hFTEx9IC9ob21lL3Rlc3R1c2VyL3dvcmtzcGFjZS90ZXN0MTYv
bWlzc2luZyBhdXRvbWFrZS0xLjE0CkFXSyA9IGdhd2sKQ0MgPSBtaXBzZWwtcG9reS1saW51eC1n
Y2MgIC1tZWwgLW1hYmk9MzIgLW1oYXJkLWZsb2F0IC1tYXJjaD1taXBzMzJyMiAtLXN5c3Jvb3Q9
L29wdC9wb2t5LzEuNy4xL3N5c3Jvb3RzL21pcHMzMnIyZWwtcG9reS1saW51eApDQ0RFUE1PREUg
PSBkZXBtb2RlPWdjYzMKQ0ZMQUdTID0gIC1nIC1PMCAgLS1zeXNyb290PS9vcHQvcG9reS8xLjcu
MS9zeXNyb290cy9taXBzMzJyMmVsLXBva3ktbGludXgKQ1BQID0gbWlwc2VsLXBva3ktbGludXgt
Z2NjIC1FICAtbWVsIC1tYWJpPTMyIC1taGFyZC1mbG9hdCAtbWFyY2g9bWlwczMycjIgLS1zeXNy
b290PS9vcHQvcG9reS8xLjcuMS9zeXNyb290cy9taXBzMzJyMmVsLXBva3ktbGludXgKQ1BQRkxB
R1MgPSAgLS1zeXNyb290PS9vcHQvcG9reS8xLjcuMS9zeXNyb290cy9taXBzMzJyMmVsLXBva3kt
bGludXgKQ1lHUEFUSF9XID0gZWNobwpERUZTID0gLURIQVZFX0NPTkZJR19ICkRFUERJUiA9IC5k
ZXBzCkRMTFRPT0wgPSBmYWxzZQpEU1lNVVRJTCA9IApEVU1QQklOID0gCkVDSE9fQyA9IApFQ0hP
X04gPSAtbgpFQ0hPX1QgPSAKRUdSRVAgPSAvYmluL2dyZXAgLUUKRVhFRVhUID0gCkZHUkVQID0g
L2Jpbi9ncmVwIC1GCkdSRVAgPSAvYmluL2dyZXAKSU5TVEFMTCA9IC91c3IvYmluL2luc3RhbGwg
LWMKSU5TVEFMTF9EQVRBID0gJHtJTlNUQUxMfSAtbSA2NDQKSU5TVEFMTF9QUk9HUkFNID0gJHtJ
TlNUQUxMfQpJTlNUQUxMX1NDUklQVCA9ICR7SU5TVEFMTH0KSU5TVEFMTF9TVFJJUF9QUk9HUkFN
ID0gJChpbnN0YWxsX3NoKSAtYyAtcwpMRCA9IG1pcHNlbC1wb2t5LWxpbnV4LWxkICAtLXN5c3Jv
b3Q9L29wdC9wb2t5LzEuNy4xL3N5c3Jvb3RzL21pcHMzMnIyZWwtcG9reS1saW51eApMREZMQUdT
ID0gIC0tc3lzcm9vdD0vb3B0L3Bva3kvMS43LjEvc3lzcm9vdHMvbWlwczMycjJlbC1wb2t5LWxp
bnV4CkxJQk9CSlMgPSAKTElCUyA9IApMSUJUT09MID0gJCh0b3BfYnVpbGRkaXIpL21pcHNlbC1w
b2t5LWxpbnV4LWxpYnRvb2wKTElQTyA9IApMTl9TID0gbG4gLXMKTFRMSUJPQkpTID0gCk1BS0VJ
TkZPID0gJHtTSEVMTH0gL2hvbWUvdGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNi9taXNzaW5nIG1h
a2VpbmZvCk1BTklGRVNUX1RPT0wgPSA6Ck1LRElSX1AgPSAvYmluL21rZGlyIC1wCk5NID0gbWlw
c2VsLXBva3ktbGludXgtbm0KTk1FRElUID0gCk9CSkRVTVAgPSBtaXBzZWwtcG9reS1saW51eC1v
YmpkdW1wCk9CSkVYVCA9IG8KT1RPT0wgPSAKT1RPT0w2NCA9IApQQUNLQUdFID0gdGVzdDE2ClBB
Q0tBR0VfQlVHUkVQT1JUID0gClBBQ0tBR0VfTkFNRSA9IHRlc3QxNgpQQUNLQUdFX1NUUklORyA9
IHRlc3QxNiAwLjEuMApQQUNLQUdFX1RBUk5BTUUgPSB0ZXN0MTYKUEFDS0FHRV9VUkwgPSAKUEFD
S0FHRV9WRVJTSU9OID0gMC4xLjAKUEFUSF9TRVBBUkFUT1IgPSA6ClJBTkxJQiA9IG1pcHNlbC1w
b2t5LWxpbnV4LXJhbmxpYgpTRUQgPSBzZWQKU0VUX01BS0UgPSAKU0hFTEwgPSAvYmluL2Jhc2gK
U1RSSVAgPSBtaXBzZWwtcG9reS1saW51eC1zdHJpcApWRVJTSU9OID0gMC4xLjAKYWJzX2J1aWxk
ZGlyID0gL2hvbWUvdGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNgphYnNfc3JjZGlyID0gL2hvbWUv
dGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNgphYnNfdG9wX2J1aWxkZGlyID0gL2hvbWUvdGVzdHVz
ZXIvd29ya3NwYWNlL3Rlc3QxNgphYnNfdG9wX3NyY2RpciA9IC9ob21lL3Rlc3R1c2VyL3dvcmtz
cGFjZS90ZXN0MTYKYWNfY3RfQVIgPSAKYWNfY3RfQ0MgPSAKYWNfY3RfRFVNUEJJTiA9IAphbV9f
aW5jbHVkZSA9IGluY2x1ZGUKYW1fX2xlYWRpbmdfZG90ID0gLgphbV9fcXVvdGUgPSAKYW1fX3Rh
ciA9ICQke1RBUi10YXJ9IGNob2YgLSAiJCR0YXJkaXIiCmFtX191bnRhciA9ICQke1RBUi10YXJ9
IHhmIC0KYmluZGlyID0gJHtleGVjX3ByZWZpeH0vYmluCmJ1aWxkID0geDg2XzY0LXBjLWxpbnV4
LWdudQpidWlsZF9hbGlhcyA9IHg4Nl82NC1saW51eApidWlsZF9jcHUgPSB4ODZfNjQKYnVpbGRf
b3MgPSBsaW51eC1nbnUKYnVpbGRfdmVuZG9yID0gcGMKYnVpbGRkaXIgPSAuCmRhdGFkaXIgPSAk
e2RhdGFyb290ZGlyfQpkYXRhcm9vdGRpciA9ICR7cHJlZml4fS9zaGFyZQpkb2NkaXIgPSAke2Rh
dGFyb290ZGlyfS9kb2MvJHtQQUNLQUdFX1RBUk5BTUV9CmR2aWRpciA9ICR7ZG9jZGlyfQpleGVj
X3ByZWZpeCA9ICR7cHJlZml4fQpob3N0ID0gbWlwc2VsLXBva3ktbGludXgtZ251Cmhvc3RfYWxp
YXMgPSBtaXBzZWwtcG9reS1saW51eApob3N0X2NwdSA9IG1pcHNlbApob3N0X29zID0gbGludXgt
Z251Cmhvc3RfdmVuZG9yID0gcG9reQpodG1sZGlyID0gJHtkb2NkaXJ9CmluY2x1ZGVkaXIgPSAk
e3ByZWZpeH0vaW5jbHVkZQppbmZvZGlyID0gJHtkYXRhcm9vdGRpcn0vaW5mbwppbnN0YWxsX3No
ID0gJHtTSEVMTH0gL2hvbWUvdGVzdHVzZXIvd29ya3NwYWNlL3Rlc3QxNi9pbnN0YWxsLXNoCmxp
YmRpciA9ICR7ZXhlY19wcmVmaXh9L2xpYgpsaWJleGVjZGlyID0gJHtleGVjX3ByZWZpeH0vbGli
ZXhlYwpsb2NhbGVkaXIgPSAke2RhdGFyb290ZGlyfS9sb2NhbGUKbG9jYWxzdGF0ZWRpciA9ICR7
cHJlZml4fS92YXIKbWFuZGlyID0gJHtkYXRhcm9vdGRpcn0vbWFuCm1rZGlyX3AgPSAkKE1LRElS
X1ApCm9sZGluY2x1ZGVkaXIgPSAvdXNyL2luY2x1ZGUKcGRmZGlyID0gJHtkb2NkaXJ9CnByZWZp
eCA9IC91c3IvbG9jYWwKcHJvZ3JhbV90cmFuc2Zvcm1fbmFtZSA9IHMseCx4LApwc2RpciA9ICR7
ZG9jZGlyfQpzYmluZGlyID0gJHtleGVjX3ByZWZpeH0vc2JpbgpzaGFyZWRzdGF0ZWRpciA9ICR7
cHJlZml4fS9jb20Kc3JjZGlyID0gLgpzeXNjb25mZGlyID0gJHtwcmVmaXh9L2V0Ywp0YXJnZXRf
YWxpYXMgPSBtaXBzZWwtcG9reS1saW51eAp0ZXN0MTZfQ0ZMQUdTID0gCnRlc3QxNl9MSUJTID0g
CnRvcF9idWlsZF9wcmVmaXggPSAKdG9wX2J1aWxkZGlyID0gLgp0b3Bfc3JjZGlyID0gLgpTVUJE
SVJTID0gc3JjCk1BSU5UQUlORVJDTEVBTkZJTEVTID0gYWNsb2NhbC5tNCBjb21waWxlIGNvbmZp
Zy5ndWVzcyBcCgkJY29uZmlnLnN1YiBjb25maWd1cmUgZGVwY29tcCBpbnN0YWxsLXNoIFwKCQls
dG1haW4uc2ggTWFrZWZpbGUuaW4gbWlzc2luZwoKYWxsOiBjb25maWcuaAoJJChNQUtFKSAkKEFN
X01BS0VGTEFHUykgYWxsLXJlY3Vyc2l2ZQoKLlNVRkZJWEVTOgphbS0tcmVmcmVzaDogTWFrZWZp
bGUKCUA6CiQoc3JjZGlyKS9NYWtlZmlsZS5pbjogICQoc3JjZGlyKS9NYWtlZmlsZS5hbSAgJChh
bV9fY29uZmlndXJlX2RlcHMpCglAZm9yIGRlcCBpbiAkPzsgZG8gXAoJICBjYXNlICckKGFtX19j
b25maWd1cmVfZGVwcyknIGluIFwKCSAgICAqJCRkZXAqKSBcCgkgICAgICBlY2hvICcgY2QgJChz
cmNkaXIpICYmICQoQVVUT01BS0UpIC0tZ251JzsgXAoJICAgICAgJChhbV9fY2QpICQoc3JjZGly
KSAmJiAkKEFVVE9NQUtFKSAtLWdudSBcCgkJJiYgZXhpdCAwOyBcCgkgICAgICBleGl0IDE7OyBc
CgkgIGVzYWM7IFwKCWRvbmU7IFwKCWVjaG8gJyBjZCAkKHRvcF9zcmNkaXIpICYmICQoQVVUT01B
S0UpIC0tZ251IE1ha2VmaWxlJzsgXAoJJChhbV9fY2QpICQodG9wX3NyY2RpcikgJiYgXAoJICAk
KEFVVE9NQUtFKSAtLWdudSBNYWtlZmlsZQouUFJFQ0lPVVM6IE1ha2VmaWxlCk1ha2VmaWxlOiAk
KHNyY2RpcikvTWFrZWZpbGUuaW4gJCh0b3BfYnVpbGRkaXIpL2NvbmZpZy5zdGF0dXMKCUBjYXNl
ICckPycgaW4gXAoJICAqY29uZmlnLnN0YXR1cyopIFwKCSAgICBlY2hvICcgJChTSEVMTCkgLi9j
b25maWcuc3RhdHVzJzsgXAoJICAgICQoU0hFTEwpIC4vY29uZmlnLnN0YXR1czs7IFwKCSAgKikg
XAoJICAgIGVjaG8gJyBjZCAkKHRvcF9idWlsZGRpcikgJiYgJChTSEVMTCkgLi9jb25maWcuc3Rh
dHVzICRAICQoYW1fX2RlcGZpbGVzX21heWJlKSc7IFwKCSAgICBjZCAkKHRvcF9idWlsZGRpcikg
JiYgJChTSEVMTCkgLi9jb25maWcuc3RhdHVzICRAICQoYW1fX2RlcGZpbGVzX21heWJlKTs7IFwK
CWVzYWM7CgokKHRvcF9idWlsZGRpcikvY29uZmlnLnN0YXR1czogJCh0b3Bfc3JjZGlyKS9jb25m
aWd1cmUgJChDT05GSUdfU1RBVFVTX0RFUEVOREVOQ0lFUykKCSQoU0hFTEwpIC4vY29uZmlnLnN0
YXR1cyAtLXJlY2hlY2sKCiQodG9wX3NyY2RpcikvY29uZmlndXJlOiAgJChhbV9fY29uZmlndXJl
X2RlcHMpCgkkKGFtX19jZCkgJChzcmNkaXIpICYmICQoQVVUT0NPTkYpCiQoQUNMT0NBTF9NNCk6
ICAkKGFtX19hY2xvY2FsX200X2RlcHMpCgkkKGFtX19jZCkgJChzcmNkaXIpICYmICQoQUNMT0NB
TCkgJChBQ0xPQ0FMX0FNRkxBR1MpCiQoYW1fX2FjbG9jYWxfbTRfZGVwcyk6Cgpjb25maWcuaDog
c3RhbXAtaDEKCUB0ZXN0IC1mICRAIHx8IHJtIC1mIHN0YW1wLWgxCglAdGVzdCAtZiAkQCB8fCAk
KE1BS0UpICQoQU1fTUFLRUZMQUdTKSBzdGFtcC1oMQoKc3RhbXAtaDE6ICQoc3JjZGlyKS9jb25m
aWcuaC5pbiAkKHRvcF9idWlsZGRpcikvY29uZmlnLnN0YXR1cwoJQHJtIC1mIHN0YW1wLWgxCglj
ZCAkKHRvcF9idWlsZGRpcikgJiYgJChTSEVMTCkgLi9jb25maWcuc3RhdHVzIGNvbmZpZy5oCiQo
c3JjZGlyKS9jb25maWcuaC5pbjogICQoYW1fX2NvbmZpZ3VyZV9kZXBzKSAKCSgkKGFtX19jZCkg
JCh0b3Bfc3JjZGlyKSAmJiAkKEFVVE9IRUFERVIpKQoJcm0gLWYgc3RhbXAtaDEKCXRvdWNoICRA
CgpkaXN0Y2xlYW4taGRyOgoJLXJtIC1mIGNvbmZpZy5oIHN0YW1wLWgxCgptb3N0bHljbGVhbi1s
aWJ0b29sOgoJLXJtIC1mICoubG8KCmNsZWFuLWxpYnRvb2w6Cgktcm0gLXJmIC5saWJzIF9saWJz
CgpkaXN0Y2xlYW4tbGlidG9vbDoKCS1ybSAtZiBsaWJ0b29sIGNvbmZpZy5sdAoKIyBUaGlzIGRp
cmVjdG9yeSdzIHN1YmRpcmVjdG9yaWVzIGFyZSBtb3N0bHkgaW5kZXBlbmRlbnQ7IHlvdSBjYW4g
Y2QKIyBpbnRvIHRoZW0gYW5kIHJ1biAnbWFrZScgd2l0aG91dCBnb2luZyB0aHJvdWdoIHRoaXMg
TWFrZWZpbGUuCiMgVG8gY2hhbmdlIHRoZSB2YWx1ZXMgb2YgJ21ha2UnIHZhcmlhYmxlczogaW5z
dGVhZCBvZiBlZGl0aW5nIE1ha2VmaWxlcywKIyAoMSkgaWYgdGhlIHZhcmlhYmxlIGlzIHNldCBp
biAnY29uZmlnLnN0YXR1cycsIGVkaXQgJ2NvbmZpZy5zdGF0dXMnCiMgICAgICh3aGljaCB3aWxs
IGNhdXNlIHRoZSBNYWtlZmlsZXMgdG8gYmUgcmVnZW5lcmF0ZWQgd2hlbiB5b3UgcnVuICdtYWtl
Jyk7CiMgKDIpIG90aGVyd2lzZSwgcGFzcyB0aGUgZGVzaXJlZCB2YWx1ZXMgb24gdGhlICdtYWtl
JyBjb21tYW5kIGxpbmUuCiQoYW1fX3JlY3Vyc2l2ZV90YXJnZXRzKToKCUBmYWlsPTsgXAoJaWYg
JChhbV9fbWFrZV9rZWVwZ29pbmcpOyB0aGVuIFwKCSAgZmFpbGNvbT0nZmFpbD15ZXMnOyBcCgll
bHNlIFwKCSAgZmFpbGNvbT0nZXhpdCAxJzsgXAoJZmk7IFwKCWRvdF9zZWVuPW5vOyBcCgl0YXJn
ZXQ9YGVjaG8gJEAgfCBzZWQgcy8tcmVjdXJzaXZlLy9gOyBcCgljYXNlICIkQCIgaW4gXAoJICBk
aXN0Y2xlYW4tKiB8IG1haW50YWluZXItY2xlYW4tKikgbGlzdD0nJChESVNUX1NVQkRJUlMpJyA7
OyBcCgkgICopIGxpc3Q9JyQoU1VCRElSUyknIDs7IFwKCWVzYWM7IFwKCWZvciBzdWJkaXIgaW4g
JCRsaXN0OyBkbyBcCgkgIGVjaG8gIk1ha2luZyAkJHRhcmdldCBpbiAkJHN1YmRpciI7IFwKCSAg
aWYgdGVzdCAiJCRzdWJkaXIiID0gIi4iOyB0aGVuIFwKCSAgICBkb3Rfc2Vlbj15ZXM7IFwKCSAg
ICBsb2NhbF90YXJnZXQ9IiQkdGFyZ2V0LWFtIjsgXAoJICBlbHNlIFwKCSAgICBsb2NhbF90YXJn
ZXQ9IiQkdGFyZ2V0IjsgXAoJICBmaTsgXAoJICAoJChhbV9fY2QpICQkc3ViZGlyICYmICQoTUFL
RSkgJChBTV9NQUtFRkxBR1MpICQkbG9jYWxfdGFyZ2V0KSBcCgkgIHx8IGV2YWwgJCRmYWlsY29t
OyBcCglkb25lOyBcCglpZiB0ZXN0ICIkJGRvdF9zZWVuIiA9ICJubyI7IHRoZW4gXAoJICAkKE1B
S0UpICQoQU1fTUFLRUZMQUdTKSAiJCR0YXJnZXQtYW0iIHx8IGV4aXQgMTsgXAoJZmk7IHRlc3Qg
LXogIiQkZmFpbCIKCklEOiAkKGFtX190YWdnZWRfZmlsZXMpCgkkKGFtX19kZWZpbmVfdW5pcV90
YWdnZWRfZmlsZXMpOyBta2lkIC1mSUQgJCR1bmlxdWUKdGFnczogdGFncy1yZWN1cnNpdmUKVEFH
UzogdGFncwoKdGFncy1hbTogJChUQUdTX0RFUEVOREVOQ0lFUykgJChhbV9fdGFnZ2VkX2ZpbGVz
KQoJc2V0IHg7IFwKCWhlcmU9YHB3ZGA7IFwKCWlmICgkKEVUQUdTKSAtLWV0YWdzLWluY2x1ZGUg
LS12ZXJzaW9uKSA+L2Rldi9udWxsIDI+JjE7IHRoZW4gXAoJICBpbmNsdWRlX29wdGlvbj0tLWV0
YWdzLWluY2x1ZGU7IFwKCSAgZW1wdHlfZml4PS47IFwKCWVsc2UgXAoJICBpbmNsdWRlX29wdGlv
bj0tLWluY2x1ZGU7IFwKCSAgZW1wdHlfZml4PTsgXAoJZmk7IFwKCWxpc3Q9JyQoU1VCRElSUykn
OyBmb3Igc3ViZGlyIGluICQkbGlzdDsgZG8gXAoJICBpZiB0ZXN0ICIkJHN1YmRpciIgPSAuOyB0
aGVuIDo7IGVsc2UgXAoJICAgIHRlc3QgISAtZiAkJHN1YmRpci9UQUdTIHx8IFwKCSAgICAgIHNl
dCAiJCRAIiAiJCRpbmNsdWRlX29wdGlvbj0kJGhlcmUvJCRzdWJkaXIvVEFHUyI7IFwKCSAgZmk7
IFwKCWRvbmU7IFwKCSQoYW1fX2RlZmluZV91bmlxX3RhZ2dlZF9maWxlcyk7IFwKCXNoaWZ0OyBc
CglpZiB0ZXN0IC16ICIkKEVUQUdTX0FSR1MpJCQqJCR1bmlxdWUiOyB0aGVuIDo7IGVsc2UgXAoJ
ICB0ZXN0IC1uICIkJHVuaXF1ZSIgfHwgdW5pcXVlPSQkZW1wdHlfZml4OyBcCgkgIGlmIHRlc3Qg
JCQjIC1ndCAwOyB0aGVuIFwKCSAgICAkKEVUQUdTKSAkKEVUQUdTRkxBR1MpICQoQU1fRVRBR1NG
TEFHUykgJChFVEFHU19BUkdTKSBcCgkgICAgICAiJCRAIiAkJHVuaXF1ZTsgXAoJICBlbHNlIFwK
CSAgICAkKEVUQUdTKSAkKEVUQUdTRkxBR1MpICQoQU1fRVRBR1NGTEFHUykgJChFVEFHU19BUkdT
KSBcCgkgICAgICAkJHVuaXF1ZTsgXAoJICBmaTsgXAoJZmkKY3RhZ3M6IGN0YWdzLXJlY3Vyc2l2
ZQoKQ1RBR1M6IGN0YWdzCmN0YWdzLWFtOiAkKFRBR1NfREVQRU5ERU5DSUVTKSAkKGFtX190YWdn
ZWRfZmlsZXMpCgkkKGFtX19kZWZpbmVfdW5pcV90YWdnZWRfZmlsZXMpOyBcCgl0ZXN0IC16ICIk
KENUQUdTX0FSR1MpJCR1bmlxdWUiIFwKCSAgfHwgJChDVEFHUykgJChDVEFHU0ZMQUdTKSAkKEFN
X0NUQUdTRkxBR1MpICQoQ1RBR1NfQVJHUykgXAoJICAgICAkJHVuaXF1ZQoKR1RBR1M6CgloZXJl
PWAkKGFtX19jZCkgJCh0b3BfYnVpbGRkaXIpICYmIHB3ZGAgXAoJICAmJiAkKGFtX19jZCkgJCh0
b3Bfc3JjZGlyKSBcCgkgICYmIGd0YWdzIC1pICQoR1RBR1NfQVJHUykgIiQkaGVyZSIKY3Njb3Bl
OiBjc2NvcGUuZmlsZXMKCXRlc3QgISAtcyBjc2NvcGUuZmlsZXMgXAoJICB8fCAkKENTQ09QRSkg
LWIgLXEgJChBTV9DU0NPUEVGTEFHUykgJChDU0NPUEVGTEFHUykgLWkgY3Njb3BlLmZpbGVzICQo
Q1NDT1BFX0FSR1MpCmNsZWFuLWNzY29wZToKCS1ybSAtZiBjc2NvcGUuZmlsZXMKY3Njb3BlLmZp
bGVzOiBjbGVhbi1jc2NvcGUgY3Njb3BlbGlzdApjc2NvcGVsaXN0OiBjc2NvcGVsaXN0LXJlY3Vy
c2l2ZQoKY3Njb3BlbGlzdC1hbTogJChhbV9fdGFnZ2VkX2ZpbGVzKQoJbGlzdD0nJChhbV9fdGFn
Z2VkX2ZpbGVzKSc7IFwKCWNhc2UgIiQoc3JjZGlyKSIgaW4gXAoJICBbXFwvXSogfCA/OltcXC9d
Kikgc2Rpcj0iJChzcmNkaXIpIiA7OyBcCgkgICopIHNkaXI9JChzdWJkaXIpLyQoc3JjZGlyKSA7
OyBcCgllc2FjOyBcCglmb3IgaSBpbiAkJGxpc3Q7IGRvIFwKCSAgaWYgdGVzdCAtZiAiJCRpIjsg
dGhlbiBcCgkgICAgZWNobyAiJChzdWJkaXIpLyQkaSI7IFwKCSAgZWxzZSBcCgkgICAgZWNobyAi
JCRzZGlyLyQkaSI7IFwKCSAgZmk7IFwKCWRvbmUgPj4gJCh0b3BfYnVpbGRkaXIpL2NzY29wZS5m
aWxlcwoKZGlzdGNsZWFuLXRhZ3M6Cgktcm0gLWYgVEFHUyBJRCBHVEFHUyBHUlRBR1MgR1NZTVMg
R1BBVEggdGFncwoJLXJtIC1mIGNzY29wZS5vdXQgY3Njb3BlLmluLm91dCBjc2NvcGUucG8ub3V0
IGNzY29wZS5maWxlcwoKZGlzdGRpcjogJChESVNURklMRVMpCgkkKGFtX19yZW1vdmVfZGlzdGRp
cikKCXRlc3QgLWQgIiQoZGlzdGRpcikiIHx8IG1rZGlyICIkKGRpc3RkaXIpIgoJQHNyY2RpcnN0
cmlwPWBlY2hvICIkKHNyY2RpcikiIHwgc2VkICdzL1tdLlteJCRcXCpdL1xcXFwmL2cnYDsgXAoJ
dG9wc3JjZGlyc3RyaXA9YGVjaG8gIiQodG9wX3NyY2RpcikiIHwgc2VkICdzL1tdLlteJCRcXCpd
L1xcXFwmL2cnYDsgXAoJbGlzdD0nJChESVNURklMRVMpJzsgXAoJICBkaXN0X2ZpbGVzPWBmb3Ig
ZmlsZSBpbiAkJGxpc3Q7IGRvIGVjaG8gJCRmaWxlOyBkb25lIHwgXAoJICBzZWQgLWUgInN8XiQk
c3JjZGlyc3RyaXAvfHw7dCIgXAoJICAgICAgLWUgInN8XiQkdG9wc3JjZGlyc3RyaXAvfCQodG9w
X2J1aWxkZGlyKS98O3QiYDsgXAoJY2FzZSAkJGRpc3RfZmlsZXMgaW4gXAoJICAqLyopICQoTUtE
SVJfUCkgYGVjaG8gIiQkZGlzdF9maWxlcyIgfCBcCgkJCSAgIHNlZCAnL1wvLyFkO3N8XnwkKGRp
c3RkaXIpL3w7cywvW14vXSokJCwsJyB8IFwKCQkJICAgc29ydCAtdWAgOzsgXAoJZXNhYzsgXAoJ
Zm9yIGZpbGUgaW4gJCRkaXN0X2ZpbGVzOyBkbyBcCgkgIGlmIHRlc3QgLWYgJCRmaWxlIHx8IHRl
c3QgLWQgJCRmaWxlOyB0aGVuIGQ9LjsgZWxzZSBkPSQoc3JjZGlyKTsgZmk7IFwKCSAgaWYgdGVz
dCAtZCAkJGQvJCRmaWxlOyB0aGVuIFwKCSAgICBkaXI9YGVjaG8gIi8kJGZpbGUiIHwgc2VkIC1l
ICdzLC9bXi9dKiQkLCwnYDsgXAoJICAgIGlmIHRlc3QgLWQgIiQoZGlzdGRpcikvJCRmaWxlIjsg
dGhlbiBcCgkgICAgICBmaW5kICIkKGRpc3RkaXIpLyQkZmlsZSIgLXR5cGUgZCAhIC1wZXJtIC03
MDAgLWV4ZWMgY2htb2QgdStyd3gge30gXDs7IFwKCSAgICBmaTsgXAoJICAgIGlmIHRlc3QgLWQg
JChzcmNkaXIpLyQkZmlsZSAmJiB0ZXN0ICQkZCAhPSAkKHNyY2Rpcik7IHRoZW4gXAoJICAgICAg
Y3AgLWZwUiAkKHNyY2RpcikvJCRmaWxlICIkKGRpc3RkaXIpJCRkaXIiIHx8IGV4aXQgMTsgXAoJ
ICAgICAgZmluZCAiJChkaXN0ZGlyKS8kJGZpbGUiIC10eXBlIGQgISAtcGVybSAtNzAwIC1leGVj
IGNobW9kIHUrcnd4IHt9IFw7OyBcCgkgICAgZmk7IFwKCSAgICBjcCAtZnBSICQkZC8kJGZpbGUg
IiQoZGlzdGRpcikkJGRpciIgfHwgZXhpdCAxOyBcCgkgIGVsc2UgXAoJICAgIHRlc3QgLWYgIiQo
ZGlzdGRpcikvJCRmaWxlIiBcCgkgICAgfHwgY3AgLXAgJCRkLyQkZmlsZSAiJChkaXN0ZGlyKS8k
JGZpbGUiIFwKCSAgICB8fCBleGl0IDE7IFwKCSAgZmk7IFwKCWRvbmUKCUBsaXN0PSckKERJU1Rf
U1VCRElSUyknOyBmb3Igc3ViZGlyIGluICQkbGlzdDsgZG8gXAoJICBpZiB0ZXN0ICIkJHN1YmRp
ciIgPSAuOyB0aGVuIDo7IGVsc2UgXAoJICAgICQoYW1fX21ha2VfZHJ5cnVuKSBcCgkgICAgICB8
fCB0ZXN0IC1kICIkKGRpc3RkaXIpLyQkc3ViZGlyIiBcCgkgICAgICB8fCAkKE1LRElSX1ApICIk
KGRpc3RkaXIpLyQkc3ViZGlyIiBcCgkgICAgICB8fCBleGl0IDE7IFwKCSAgICBkaXIxPSQkc3Vi
ZGlyOyBkaXIyPSIkKGRpc3RkaXIpLyQkc3ViZGlyIjsgXAoJICAgICQoYW1fX3JlbGF0aXZpemUp
OyBcCgkgICAgbmV3X2Rpc3RkaXI9JCRyZWxkaXI7IFwKCSAgICBkaXIxPSQkc3ViZGlyOyBkaXIy
PSIkKHRvcF9kaXN0ZGlyKSI7IFwKCSAgICAkKGFtX19yZWxhdGl2aXplKTsgXAoJICAgIG5ld190
b3BfZGlzdGRpcj0kJHJlbGRpcjsgXAoJICAgIGVjaG8gIiAoY2QgJCRzdWJkaXIgJiYgJChNQUtF
KSAkKEFNX01BS0VGTEFHUykgdG9wX2Rpc3RkaXI9IiQkbmV3X3RvcF9kaXN0ZGlyIiBkaXN0ZGly
PSIkJG5ld19kaXN0ZGlyIiBcXCI7IFwKCSAgICBlY2hvICIgICAgIGFtX19yZW1vdmVfZGlzdGRp
cj06IGFtX19za2lwX2xlbmd0aF9jaGVjaz06IGFtX19za2lwX21vZGVfZml4PTogZGlzdGRpciki
OyBcCgkgICAgKCQoYW1fX2NkKSAkJHN1YmRpciAmJiBcCgkgICAgICAkKE1BS0UpICQoQU1fTUFL
RUZMQUdTKSBcCgkgICAgICAgIHRvcF9kaXN0ZGlyPSIkJG5ld190b3BfZGlzdGRpciIgXAoJICAg
ICAgICBkaXN0ZGlyPSIkJG5ld19kaXN0ZGlyIiBcCgkJYW1fX3JlbW92ZV9kaXN0ZGlyPTogXAoJ
CWFtX19za2lwX2xlbmd0aF9jaGVjaz06IFwKCQlhbV9fc2tpcF9tb2RlX2ZpeD06IFwKCSAgICAg
ICAgZGlzdGRpcikgXAoJICAgICAgfHwgZXhpdCAxOyBcCgkgIGZpOyBcCglkb25lCgktdGVzdCAt
biAiJChhbV9fc2tpcF9tb2RlX2ZpeCkiIFwKCXx8IGZpbmQgIiQoZGlzdGRpcikiIC10eXBlIGQg
ISAtcGVybSAtNzU1IFwKCQktZXhlYyBjaG1vZCB1K3J3eCxnbytyeCB7fSBcOyAtbyBcCgkgICEg
LXR5cGUgZCAhIC1wZXJtIC00NDQgLWxpbmtzIDEgLWV4ZWMgY2htb2QgYStyIHt9IFw7IC1vIFwK
CSAgISAtdHlwZSBkICEgLXBlcm0gLTQwMCAtZXhlYyBjaG1vZCBhK3Ige30gXDsgLW8gXAoJICAh
IC10eXBlIGQgISAtcGVybSAtNDQ0IC1leGVjICQoaW5zdGFsbF9zaCkgLWMgLW0gYStyIHt9IHt9
IFw7IFwKCXx8IGNobW9kIC1SIGErciAiJChkaXN0ZGlyKSIKZGlzdC1nemlwOiBkaXN0ZGlyCgl0
YXJkaXI9JChkaXN0ZGlyKSAmJiAkKGFtX190YXIpIHwgR1pJUD0kKEdaSVBfRU5WKSBnemlwIC1j
ID4kKGRpc3RkaXIpLnRhci5negoJJChhbV9fcG9zdF9yZW1vdmVfZGlzdGRpcikKCmRpc3QtYnpp
cDI6IGRpc3RkaXIKCXRhcmRpcj0kKGRpc3RkaXIpICYmICQoYW1fX3RhcikgfCBCWklQMj0kJHtC
WklQMi0tOX0gYnppcDIgLWMgPiQoZGlzdGRpcikudGFyLmJ6MgoJJChhbV9fcG9zdF9yZW1vdmVf
ZGlzdGRpcikKCmRpc3QtbHppcDogZGlzdGRpcgoJdGFyZGlyPSQoZGlzdGRpcikgJiYgJChhbV9f
dGFyKSB8IGx6aXAgLWMgJCR7TFpJUF9PUFQtLTl9ID4kKGRpc3RkaXIpLnRhci5segoJJChhbV9f
cG9zdF9yZW1vdmVfZGlzdGRpcikKCmRpc3QteHo6IGRpc3RkaXIKCXRhcmRpcj0kKGRpc3RkaXIp
ICYmICQoYW1fX3RhcikgfCBYWl9PUFQ9JCR7WFpfT1BULS1lfSB4eiAtYyA+JChkaXN0ZGlyKS50
YXIueHoKCSQoYW1fX3Bvc3RfcmVtb3ZlX2Rpc3RkaXIpCgpkaXN0LXRhclo6IGRpc3RkaXIKCUBl
Y2hvIFdBUk5JTkc6ICJTdXBwb3J0IGZvciBzaGFyIGRpc3RyaWJ1dGlvbiBhcmNoaXZlcyBpcyIg
XAoJICAgICAgICAgICAgICAgImRlcHJlY2F0ZWQuIiA+JjIKCUBlY2hvIFdBUk5JTkc6ICJJdCB3
aWxsIGJlIHJlbW92ZWQgYWx0b2dldGhlciBpbiBBdXRvbWFrZSAyLjAiID4mMgoJdGFyZGlyPSQo
ZGlzdGRpcikgJiYgJChhbV9fdGFyKSB8IGNvbXByZXNzIC1jID4kKGRpc3RkaXIpLnRhci5aCgkk
KGFtX19wb3N0X3JlbW92ZV9kaXN0ZGlyKQoKZGlzdC1zaGFyOiBkaXN0ZGlyCglAZWNobyBXQVJO
SU5HOiAiU3VwcG9ydCBmb3IgZGlzdHJpYnV0aW9uIGFyY2hpdmVzIGNvbXByZXNzZWQgd2l0aCIg
XAoJCSAgICAgICAibGVnYWN5IHByb2dyYW0gJ2NvbXByZXNzJyBpcyBkZXByZWNhdGVkLiIgPiYy
CglAZWNobyBXQVJOSU5HOiAiSXQgd2lsbCBiZSByZW1vdmVkIGFsdG9nZXRoZXIgaW4gQXV0b21h
a2UgMi4wIiA+JjIKCXNoYXIgJChkaXN0ZGlyKSB8IEdaSVA9JChHWklQX0VOVikgZ3ppcCAtYyA+
JChkaXN0ZGlyKS5zaGFyLmd6CgkkKGFtX19wb3N0X3JlbW92ZV9kaXN0ZGlyKQoKZGlzdC16aXA6
IGRpc3RkaXIKCS1ybSAtZiAkKGRpc3RkaXIpLnppcAoJemlwIC1ycSAkKGRpc3RkaXIpLnppcCAk
KGRpc3RkaXIpCgkkKGFtX19wb3N0X3JlbW92ZV9kaXN0ZGlyKQoKZGlzdCBkaXN0LWFsbDoKCSQo
TUFLRSkgJChBTV9NQUtFRkxBR1MpICQoRElTVF9UQVJHRVRTKSBhbV9fcG9zdF9yZW1vdmVfZGlz
dGRpcj0nQDonCgkkKGFtX19wb3N0X3JlbW92ZV9kaXN0ZGlyKQoKIyBUaGlzIHRhcmdldCB1bnRh
cnMgdGhlIGRpc3QgZmlsZSBhbmQgdHJpZXMgYSBWUEFUSCBjb25maWd1cmF0aW9uLiAgVGhlbgoj
IGl0IGd1YXJhbnRlZXMgdGhhdCB0aGUgZGlzdHJpYnV0aW9uIGlzIHNlbGYtY29udGFpbmVkIGJ5
IG1ha2luZyBhbm90aGVyCiMgdGFyZmlsZS4KZGlzdGNoZWNrOiBkaXN0CgljYXNlICckKERJU1Rf
QVJDSElWRVMpJyBpbiBcCgkqLnRhci5neiopIFwKCSAgR1pJUD0kKEdaSVBfRU5WKSBnemlwIC1k
YyAkKGRpc3RkaXIpLnRhci5neiB8ICQoYW1fX3VudGFyKSA7O1wKCSoudGFyLmJ6MiopIFwKCSAg
YnppcDIgLWRjICQoZGlzdGRpcikudGFyLmJ6MiB8ICQoYW1fX3VudGFyKSA7O1wKCSoudGFyLmx6
KikgXAoJICBsemlwIC1kYyAkKGRpc3RkaXIpLnRhci5seiB8ICQoYW1fX3VudGFyKSA7O1wKCSou
dGFyLnh6KikgXAoJICB4eiAtZGMgJChkaXN0ZGlyKS50YXIueHogfCAkKGFtX191bnRhcikgOztc
CgkqLnRhci5aKikgXAoJICB1bmNvbXByZXNzIC1jICQoZGlzdGRpcikudGFyLlogfCAkKGFtX191
bnRhcikgOztcCgkqLnNoYXIuZ3oqKSBcCgkgIEdaSVA9JChHWklQX0VOVikgZ3ppcCAtZGMgJChk
aXN0ZGlyKS5zaGFyLmd6IHwgdW5zaGFyIDs7XAoJKi56aXAqKSBcCgkgIHVuemlwICQoZGlzdGRp
cikuemlwIDs7XAoJZXNhYwoJY2htb2QgLVIgYS13ICQoZGlzdGRpcikKCWNobW9kIHUrdyAkKGRp
c3RkaXIpCglta2RpciAkKGRpc3RkaXIpL19idWlsZCAkKGRpc3RkaXIpL19pbnN0CgljaG1vZCBh
LXcgJChkaXN0ZGlyKQoJdGVzdCAtZCAkKGRpc3RkaXIpL19idWlsZCB8fCBleGl0IDA7IFwKCWRj
X2luc3RhbGxfYmFzZT1gJChhbV9fY2QpICQoZGlzdGRpcikvX2luc3QgJiYgcHdkIHwgc2VkIC1l
ICdzLF5bXjpcXC9dOltcXC9dLC8sJ2AgXAoJICAmJiBkY19kZXN0ZGlyPSIkJHtUTVBESVItL3Rt
cH0vYW0tZGMtJCQkJC8iIFwKCSAgJiYgYW1fX2N3ZD1gcHdkYCBcCgkgICYmICQoYW1fX2NkKSAk
KGRpc3RkaXIpL19idWlsZCBcCgkgICYmIC4uL2NvbmZpZ3VyZSBcCgkgICAgJChBTV9ESVNUQ0hF
Q0tfQ09ORklHVVJFX0ZMQUdTKSBcCgkgICAgJChESVNUQ0hFQ0tfQ09ORklHVVJFX0ZMQUdTKSBc
CgkgICAgLS1zcmNkaXI9Li4gLS1wcmVmaXg9IiQkZGNfaW5zdGFsbF9iYXNlIiBcCgkgICYmICQo
TUFLRSkgJChBTV9NQUtFRkxBR1MpIFwKCSAgJiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgZHZp
IFwKCSAgJiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgY2hlY2sgXAoJICAmJiAkKE1BS0UpICQo
QU1fTUFLRUZMQUdTKSBpbnN0YWxsIFwKCSAgJiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgaW5z
dGFsbGNoZWNrIFwKCSAgJiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgdW5pbnN0YWxsIFwKCSAg
JiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgZGlzdHVuaW5zdGFsbGNoZWNrX2Rpcj0iJCRkY19p
bnN0YWxsX2Jhc2UiIFwKCSAgICAgICAgZGlzdHVuaW5zdGFsbGNoZWNrIFwKCSAgJiYgY2htb2Qg
LVIgYS13ICIkJGRjX2luc3RhbGxfYmFzZSIgXAoJICAmJiAoeyBcCgkgICAgICAgKGNkIC4uLy4u
ICYmIHVtYXNrIDA3NyAmJiBta2RpciAiJCRkY19kZXN0ZGlyIikgXAoJICAgICAgICYmICQoTUFL
RSkgJChBTV9NQUtFRkxBR1MpIERFU1RESVI9IiQkZGNfZGVzdGRpciIgaW5zdGFsbCBcCgkgICAg
ICAgJiYgJChNQUtFKSAkKEFNX01BS0VGTEFHUykgREVTVERJUj0iJCRkY19kZXN0ZGlyIiB1bmlu
c3RhbGwgXAoJICAgICAgICYmICQoTUFLRSkgJChBTV9NQUtFRkxBR1MpIERFU1RESVI9IiQkZGNf
ZGVzdGRpciIgXAoJICAgICAgICAgICAgZGlzdHVuaW5zdGFsbGNoZWNrX2Rpcj0iJCRkY19kZXN0
ZGlyIiBkaXN0dW5pbnN0YWxsY2hlY2s7IFwKCSAgICAgIH0gfHwgeyBybSAtcmYgIiQkZGNfZGVz
dGRpciI7IGV4aXQgMTsgfSkgXAoJICAmJiBybSAtcmYgIiQkZGNfZGVzdGRpciIgXAoJICAmJiAk
KE1BS0UpICQoQU1fTUFLRUZMQUdTKSBkaXN0IFwKCSAgJiYgcm0gLXJmICQoRElTVF9BUkNISVZF
UykgXAoJICAmJiAkKE1BS0UpICQoQU1fTUFLRUZMQUdTKSBkaXN0Y2xlYW5jaGVjayBcCgkgICYm
IGNkICIkJGFtX19jd2QiIFwKCSAgfHwgZXhpdCAxCgkkKGFtX19wb3N0X3JlbW92ZV9kaXN0ZGly
KQoJQChlY2hvICIkKGRpc3RkaXIpIGFyY2hpdmVzIHJlYWR5IGZvciBkaXN0cmlidXRpb246ICI7
IFwKCSAgbGlzdD0nJChESVNUX0FSQ0hJVkVTKSc7IGZvciBpIGluICQkbGlzdDsgZG8gZWNobyAk
JGk7IGRvbmUpIHwgXAoJICBzZWQgLWUgMWggLWUgMXMvLi89L2cgLWUgMXAgLWUgMXggLWUgJyQk
cCcgLWUgJyQkeCcKZGlzdHVuaW5zdGFsbGNoZWNrOgoJQHRlc3QgLW4gJyQoZGlzdHVuaW5zdGFs
bGNoZWNrX2RpciknIHx8IHsgXAoJICBlY2hvICdFUlJPUjogdHJ5aW5nIHRvIHJ1biAkQCB3aXRo
IGFuIGVtcHR5JyBcCgkgICAgICAgJyQkKGRpc3R1bmluc3RhbGxjaGVja19kaXIpJyA+JjI7IFwK
CSAgZXhpdCAxOyBcCgl9OyBcCgkkKGFtX19jZCkgJyQoZGlzdHVuaW5zdGFsbGNoZWNrX2Rpcikn
IHx8IHsgXAoJICBlY2hvICdFUlJPUjogY2Fubm90IGNoZGlyIGludG8gJChkaXN0dW5pbnN0YWxs
Y2hlY2tfZGlyKScgPiYyOyBcCgkgIGV4aXQgMTsgXAoJfTsgXAoJdGVzdCBgJChhbV9fZGlzdHVu
aW5zdGFsbGNoZWNrX2xpc3RmaWxlcykgfCB3YyAtbGAgLWVxIDAgXAoJICAgfHwgeyBlY2hvICJF
UlJPUjogZmlsZXMgbGVmdCBhZnRlciB1bmluc3RhbGw6IiA7IFwKCSAgICAgICAgaWYgdGVzdCAt
biAiJChERVNURElSKSI7IHRoZW4gXAoJICAgICAgICAgIGVjaG8gIiAgKGNoZWNrIERFU1RESVIg
c3VwcG9ydCkiOyBcCgkgICAgICAgIGZpIDsgXAoJICAgICAgICAkKGRpc3R1bmluc3RhbGxjaGVj
a19saXN0ZmlsZXMpIDsgXAoJICAgICAgICBleGl0IDE7IH0gPiYyCmRpc3RjbGVhbmNoZWNrOiBk
aXN0Y2xlYW4KCUBpZiB0ZXN0ICckKHNyY2RpciknID0gLiA7IHRoZW4gXAoJICBlY2hvICJFUlJP
UjogZGlzdGNsZWFuY2hlY2sgY2FuIG9ubHkgcnVuIGZyb20gYSBWUEFUSCBidWlsZCIgOyBcCgkg
IGV4aXQgMSA7IFwKCWZpCglAdGVzdCBgJChkaXN0Y2xlYW5jaGVja19saXN0ZmlsZXMpIHwgd2Mg
LWxgIC1lcSAwIFwKCSAgfHwgeyBlY2hvICJFUlJPUjogZmlsZXMgbGVmdCBpbiBidWlsZCBkaXJl
Y3RvcnkgYWZ0ZXIgZGlzdGNsZWFuOiIgOyBcCgkgICAgICAgJChkaXN0Y2xlYW5jaGVja19saXN0
ZmlsZXMpIDsgXAoJICAgICAgIGV4aXQgMTsgfSA+JjIKY2hlY2stYW06IGFsbC1hbQpjaGVjazog
Y2hlY2stcmVjdXJzaXZlCmFsbC1hbTogTWFrZWZpbGUgY29uZmlnLmgKaW5zdGFsbGRpcnM6IGlu
c3RhbGxkaXJzLXJlY3Vyc2l2ZQppbnN0YWxsZGlycy1hbToKaW5zdGFsbDogaW5zdGFsbC1yZWN1
cnNpdmUKaW5zdGFsbC1leGVjOiBpbnN0YWxsLWV4ZWMtcmVjdXJzaXZlCmluc3RhbGwtZGF0YTog
aW5zdGFsbC1kYXRhLXJlY3Vyc2l2ZQp1bmluc3RhbGw6IHVuaW5zdGFsbC1yZWN1cnNpdmUKCmlu
c3RhbGwtYW06IGFsbC1hbQoJQCQoTUFLRSkgJChBTV9NQUtFRkxBR1MpIGluc3RhbGwtZXhlYy1h
bSBpbnN0YWxsLWRhdGEtYW0KCmluc3RhbGxjaGVjazogaW5zdGFsbGNoZWNrLXJlY3Vyc2l2ZQpp
bnN0YWxsLXN0cmlwOgoJaWYgdGVzdCAteiAnJChTVFJJUCknOyB0aGVuIFwKCSAgJChNQUtFKSAk
KEFNX01BS0VGTEFHUykgSU5TVEFMTF9QUk9HUkFNPSIkKElOU1RBTExfU1RSSVBfUFJPR1JBTSki
IFwKCSAgICBpbnN0YWxsX3NoX1BST0dSQU09IiQoSU5TVEFMTF9TVFJJUF9QUk9HUkFNKSIgSU5T
VEFMTF9TVFJJUF9GTEFHPS1zIFwKCSAgICAgIGluc3RhbGw7IFwKCWVsc2UgXAoJICAkKE1BS0Up
ICQoQU1fTUFLRUZMQUdTKSBJTlNUQUxMX1BST0dSQU09IiQoSU5TVEFMTF9TVFJJUF9QUk9HUkFN
KSIgXAoJICAgIGluc3RhbGxfc2hfUFJPR1JBTT0iJChJTlNUQUxMX1NUUklQX1BST0dSQU0pIiBJ
TlNUQUxMX1NUUklQX0ZMQUc9LXMgXAoJICAgICJJTlNUQUxMX1BST0dSQU1fRU5WPVNUUklQUFJP
Rz0nJChTVFJJUCknIiBpbnN0YWxsOyBcCglmaQptb3N0bHljbGVhbi1nZW5lcmljOgoKY2xlYW4t
Z2VuZXJpYzoKCmRpc3RjbGVhbi1nZW5lcmljOgoJLXRlc3QgLXogIiQoQ09ORklHX0NMRUFOX0ZJ
TEVTKSIgfHwgcm0gLWYgJChDT05GSUdfQ0xFQU5fRklMRVMpCgktdGVzdCAuID0gIiQoc3JjZGly
KSIgfHwgdGVzdCAteiAiJChDT05GSUdfQ0xFQU5fVlBBVEhfRklMRVMpIiB8fCBybSAtZiAkKENP
TkZJR19DTEVBTl9WUEFUSF9GSUxFUykKCm1haW50YWluZXItY2xlYW4tZ2VuZXJpYzoKCUBlY2hv
ICJUaGlzIGNvbW1hbmQgaXMgaW50ZW5kZWQgZm9yIG1haW50YWluZXJzIHRvIHVzZSIKCUBlY2hv
ICJpdCBkZWxldGVzIGZpbGVzIHRoYXQgbWF5IHJlcXVpcmUgc3BlY2lhbCB0b29scyB0byByZWJ1
aWxkLiIKCS10ZXN0IC16ICIkKE1BSU5UQUlORVJDTEVBTkZJTEVTKSIgfHwgcm0gLWYgJChNQUlO
VEFJTkVSQ0xFQU5GSUxFUykKY2xlYW46IGNsZWFuLXJlY3Vyc2l2ZQoKY2xlYW4tYW06IGNsZWFu
LWdlbmVyaWMgY2xlYW4tbGlidG9vbCBtb3N0bHljbGVhbi1hbQoKZGlzdGNsZWFuOiBkaXN0Y2xl
YW4tcmVjdXJzaXZlCgktcm0gLWYgJChhbV9fQ09ORklHX0RJU1RDTEVBTl9GSUxFUykKCS1ybSAt
ZiBNYWtlZmlsZQpkaXN0Y2xlYW4tYW06IGNsZWFuLWFtIGRpc3RjbGVhbi1nZW5lcmljIGRpc3Rj
bGVhbi1oZHIgXAoJZGlzdGNsZWFuLWxpYnRvb2wgZGlzdGNsZWFuLXRhZ3MKCmR2aTogZHZpLXJl
Y3Vyc2l2ZQoKZHZpLWFtOgoKaHRtbDogaHRtbC1yZWN1cnNpdmUKCmh0bWwtYW06CgppbmZvOiBp
bmZvLXJlY3Vyc2l2ZQoKaW5mby1hbToKCmluc3RhbGwtZGF0YS1hbToKCmluc3RhbGwtZHZpOiBp
bnN0YWxsLWR2aS1yZWN1cnNpdmUKCmluc3RhbGwtZHZpLWFtOgoKaW5zdGFsbC1leGVjLWFtOgoK
aW5zdGFsbC1odG1sOiBpbnN0YWxsLWh0bWwtcmVjdXJzaXZlCgppbnN0YWxsLWh0bWwtYW06Cgpp
bnN0YWxsLWluZm86IGluc3RhbGwtaW5mby1yZWN1cnNpdmUKCmluc3RhbGwtaW5mby1hbToKCmlu
c3RhbGwtbWFuOgoKaW5zdGFsbC1wZGY6IGluc3RhbGwtcGRmLXJlY3Vyc2l2ZQoKaW5zdGFsbC1w
ZGYtYW06CgppbnN0YWxsLXBzOiBpbnN0YWxsLXBzLXJlY3Vyc2l2ZQoKaW5zdGFsbC1wcy1hbToK
Cmluc3RhbGxjaGVjay1hbToKCm1haW50YWluZXItY2xlYW46IG1haW50YWluZXItY2xlYW4tcmVj
dXJzaXZlCgktcm0gLWYgJChhbV9fQ09ORklHX0RJU1RDTEVBTl9GSUxFUykKCS1ybSAtcmYgJCh0
b3Bfc3JjZGlyKS9hdXRvbTR0ZS5jYWNoZQoJLXJtIC1mIE1ha2VmaWxlCm1haW50YWluZXItY2xl
YW4tYW06IGRpc3RjbGVhbi1hbSBtYWludGFpbmVyLWNsZWFuLWdlbmVyaWMKCm1vc3RseWNsZWFu
OiBtb3N0bHljbGVhbi1yZWN1cnNpdmUKCm1vc3RseWNsZWFuLWFtOiBtb3N0bHljbGVhbi1nZW5l
cmljIG1vc3RseWNsZWFuLWxpYnRvb2wKCnBkZjogcGRmLXJlY3Vyc2l2ZQoKcGRmLWFtOgoKcHM6
IHBzLXJlY3Vyc2l2ZQoKcHMtYW06Cgp1bmluc3RhbGwtYW06CgouTUFLRTogJChhbV9fcmVjdXJz
aXZlX3RhcmdldHMpIGFsbCBpbnN0YWxsLWFtIGluc3RhbGwtc3RyaXAKCi5QSE9OWTogJChhbV9f
cmVjdXJzaXZlX3RhcmdldHMpIENUQUdTIEdUQUdTIFRBR1MgYWxsIGFsbC1hbSBcCglhbS0tcmVm
cmVzaCBjaGVjayBjaGVjay1hbSBjbGVhbiBjbGVhbi1jc2NvcGUgY2xlYW4tZ2VuZXJpYyBcCglj
bGVhbi1saWJ0b29sIGNzY29wZSBjc2NvcGVsaXN0LWFtIGN0YWdzIGN0YWdzLWFtIGRpc3QgXAoJ
ZGlzdC1hbGwgZGlzdC1iemlwMiBkaXN0LWd6aXAgZGlzdC1semlwIGRpc3Qtc2hhciBkaXN0LXRh
clogXAoJZGlzdC14eiBkaXN0LXppcCBkaXN0Y2hlY2sgZGlzdGNsZWFuIGRpc3RjbGVhbi1nZW5l
cmljIFwKCWRpc3RjbGVhbi1oZHIgZGlzdGNsZWFuLWxpYnRvb2wgZGlzdGNsZWFuLXRhZ3MgZGlz
dGNsZWFuY2hlY2sgXAoJZGlzdGRpciBkaXN0dW5pbnN0YWxsY2hlY2sgZHZpIGR2aS1hbSBodG1s
IGh0bWwtYW0gaW5mbyBcCglpbmZvLWFtIGluc3RhbGwgaW5zdGFsbC1hbSBpbnN0YWxsLWRhdGEg
aW5zdGFsbC1kYXRhLWFtIFwKCWluc3RhbGwtZHZpIGluc3RhbGwtZHZpLWFtIGluc3RhbGwtZXhl
YyBpbnN0YWxsLWV4ZWMtYW0gXAoJaW5zdGFsbC1odG1sIGluc3RhbGwtaHRtbC1hbSBpbnN0YWxs
LWluZm8gaW5zdGFsbC1pbmZvLWFtIFwKCWluc3RhbGwtbWFuIGluc3RhbGwtcGRmIGluc3RhbGwt
cGRmLWFtIGluc3RhbGwtcHMgXAoJaW5zdGFsbC1wcy1hbSBpbnN0YWxsLXN0cmlwIGluc3RhbGxj
aGVjayBpbnN0YWxsY2hlY2stYW0gXAoJaW5zdGFsbGRpcnMgaW5zdGFsbGRpcnMtYW0gbWFpbnRh
aW5lci1jbGVhbiBcCgltYWludGFpbmVyLWNsZWFuLWdlbmVyaWMgbW9zdGx5Y2xlYW4gbW9zdGx5
Y2xlYW4tZ2VuZXJpYyBcCgltb3N0bHljbGVhbi1saWJ0b29sIHBkZiBwZGYtYW0gcHMgcHMtYW0g
dGFncyB0YWdzLWFtIHVuaW5zdGFsbCBcCgl1bmluc3RhbGwtYW0KCgojIFRlbGwgdmVyc2lvbnMg
WzMuNTksMy42Mykgb2YgR05VIG1ha2UgdG8gbm90IGV4cG9ydCBhbGwgdmFyaWFibGVzLgojIE90
aGVyd2lzZSBhIHN5c3RlbSBsaW1pdCAoZm9yIFN5c1YgYXQgbGVhc3QpIG1heSBiZSBleGNlZWRl
ZC4KLk5PRVhQT1JUOgoK

--_002_143201923948090156inedasystemscom_--
