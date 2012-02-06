Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5276DE01217
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 03:54:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Feb 2012 03:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114567210"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2012 03:54:01 -0800
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 11:54:00 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.165]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 11:53:59 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, "Xu, Dongxiao"
	<dongxiao.xu@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: RFC: Hob 1.2 design
Thread-Index: AQHM5MYCyiYUtHb0d0KhmqVM+D5XmQ==
Date: Mon, 6 Feb 2012 11:53:59 +0000
Message-ID: <CB5565F6.72C6%belen.barros.pena@intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEBEDF@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.18.204]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Mon, 06 Feb 2012 11:54:02 -0000
Content-Language: en-US
Content-ID: <003E07208D57C247874096C22B637715@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"

Hi Shane and team,

In general all sounds good. I just have a couple of small comments, which I=
've added below.

Belen

From: "Wang, Shane" <shane.wang@intel.com<mailto:shane.wang@intel.com>>
Date: Fri, 3 Feb 2012 05:29:57 +0000
To: "Xu, Dongxiao" <dongxiao.xu@intel.com<mailto:dongxiao.xu@intel.com>>, "=
Belen Barros Pena (Intel)" <belen.barros.pena@intel.com<mailto:belen.barros=
.pena@intel.com>>, "Lu, Lianhao" <lianhao.lu@intel.com<mailto:lianhao.lu@in=
tel.com>>
Cc: "Eggleton, Paul" <paul.eggleton@intel.com<mailto:paul.eggleton@intel.co=
m>>, "Purdie, Richard" <richard.purdie@intel.com<mailto:richard.purdie@inte=
l.com>>, "Zhang, Jessica" <jessica.zhang@intel.com<mailto:jessica.zhang@int=
el.com>>, "Lock, Joshua" <joshua.lock@intel.com<mailto:joshua.lock@intel.co=
m>>, "Liu, Song" <song.liu@intel.com<mailto:song.liu@intel.com>>, "Stewart,=
 David C" <david.c.stewart@intel.com<mailto:david.c.stewart@intel.com>>, "y=
octo@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproject.o=
rg<mailto:yocto@yoctoproject.org>>
Subject: RE: RFC: Hob 1.2 design

Dongxiao and I have a discussion on that again.

Belen, please ignore the issue for the deployment button below, and we have=
 several suggestions.

1. To make the Packages Screen and the Packages dialog the same.
The Packages Screen is shown after users click =93Build packages=94. That i=
s one step of the process.
However, the content shown in the Package dialog is all what we have built =
out last time. It is very possible users start from there and don=92t want =
to go back to the Image configuration screen and click =93Build Image=94.

Sorry, I am not sure I understand. What you seem to be saying is that we wi=
ll eliminate the 'View packages' button from the Image configuration screen=
 and the Packages dialogue. Users will access packages information via the =
'Build packages' option, which will bring them to the Packages screen. Is t=
his correct?

2. As mentioned in my last email, we want to add =93Clean=94 in the GUI. Th=
e reason is the build will fail, say, do_fetch, then we have an option to a=
llow users to clean what we built out and rebuild. Otherwise, the sstate co=
uld be reused for the next build. Users can do it by running =93bitbake =96=
c cleanall=94 in the command line. But we hope to provide this feature in t=
he GUI.
If you agree the above, then the action =93Clean=94 is for a recipe or mult=
iple recipes, and clicking =93Clean=94 will go to the screen at 4:00, since=
 cleaning includes some tasks.
Then we could make the Recipes dialog to be a screen, do you agree?

Yes: I agree with you. Making Recipes a screen instead of a dialogue seems =
like a good solution. However, I am not sure the 'Clean' function should be=
 in the Recipes screen: it should probably be an option that is displayed w=
hen the build fails. If you select it you go to the screen at 4:00 to provi=
de information about the cleaning tasks and once they are done, you get the=
 Recipes screen ready for you to build again. I think this 'build failed' s=
cenario is very important, and I would like to design it carefully. Would  =
it be ok if I work on it this week and send you some suggestions?

The other reason is users can view recipes and click =93Build Packages=94, =
no need go back to the Image configuration screen.
The use case is:
1) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes and Build packages -> Log -> the Packages screen =85
2) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes and Build packages -> Log -> Failure -> Go back to the Recipes scre=
en -> Clean something -> Log -> the Recipes screen -> Build packages again =
-> Log -> Success -> the Packages screen =85
3) View Recipes in the Image configuration -> the Recipes screen -> Select =
recipes -> Go back to the Image configuraion -> =93Build Image=94
4) Nothing want to view in the Image configuration after choosing =93base i=
mage=94 -> =93Build packages=94 -> Log -> the Packages screen =85
5) Nothing want to view in the Image configuration after choosing =93base i=
mage=94 -> =93Build packages=94 -> Log -> Failure -> Go back to the Image c=
onfiguration -> View Recipes -> the Recipes screen -> Clean something -> Lo=
g -> the Recipe screen -> =85
6) Nothing want to view in the Image configuration after choosing =93base i=
mage=94 -> =93Build Image=94 -> Log -> the Image details =85
and so on=85

This seems to make sense. Just a small comment about the use case number 3.=
 I think the Recipes screen should have 2 actions: "build packages" and "bu=
ild image", so that users who want to build an image directly from the Reci=
pes screen don't need to go back to the Image configuration screen in order=
 to build the image.

3. When build is failed, there is a =93Back=94 button. But go back to where=
 is determined by where you come from.

I'll keep this in mind when designing the 'build failed' scenario.

4. After users open an image by =93My images=94, some time there should not=
 be a =93Save Template=94 because we don=92t have build process.
Let=92s show =93Save Template=94 when =93Congratulations! Your image is rea=
dy!=94 is shown, OK?

This sounds ok to me. Should we have a 'save as template' option in the Ima=
ge configuration screen? Or will we just have it in the Image details scree=
n when you get there after completing the build process?

5. In the Image details screen, =93Settings=94 is obviously not good to be =
shown there. Can we remove =93Load Template=94? Because it will initiate a =
new build. Let=92s ask users to click =93Build new image=94 to be on the Im=
age configuration and click =93Load Template=94.
We just keep =93My Images=94 in the last screen (the Image details screen),=
 is it OK?
And remove =93Edit Packages=94 and =93Edit Configuration=94, if the build p=
rocess is not executed this time. (ditto for =93Save Template=94 in 4.)

Happy with this.

6. In Josh=92s email, FRI 2 image can also be run, though it is an image fo=
r real machine. Can we keep two buttons =93Run=94 and =93Deploy=94 on the I=
mage details screen and let uses decide what he/she wants? I admit an error=
 possibly happens if the image doesn=92t match the action, but we just repo=
rt the error.

Not so happy with this one ;) If an option is going to generate an error wh=
en selected, it should not be there at all. GUI's must be defensive: they m=
ust prevent user errors. This is a fundamental principle of interaction des=
ign. We should only present the  'Run' (on qemu) option if the image is sui=
table for qemu running. We should only display the 'Deploy' option for live=
 images. If there is no way to reliably determine what type of image we are=
 dealing with and which options are suitable for them, the 'Run' and 'Deplo=
y' functionality should not be there at all. Better wait until we find a wo=
rk around.

Having said that, it seems to me that using the file extension to determine=
 what's the appropriate action for each image should work the vast majority=
 of times. If someone has changed the extension of the image, well, that wo=
uld be an edge case (how likely are people to do that?), and we should not =
get into the trap of designing for the edge case, which is what we would be=
 doing if we were to display both 'run' and 'deploy' for all images.

Thoughts?
Thanks.
--
Shane

From: Xu, Dongxiao
Sent: Friday, February 03, 2012 8:57 AM
To: Wang, Shane; Barros Pena, Belen; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Son=
g; Stewart, David C; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: RFC: Hob 1.2 design

One more from me that, Hob may work as a deploy tool, and in the new movie,=
 the approach is to select =93My images=94 and then click deploy button. I =
think normal user may not have such knowledge. I am still wondering if addi=
ng a =93deploy=94 button in the tool bar?

Thanks,
Dongxiao

From: Wang, Shane
Sent: Friday, February 03, 2012 8:26 AM
To: Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Son=
g; Stewart, David C; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: RFC: Hob 1.2 design

I get one more:

In the Image details screen, after opening an image file by clicking =93My =
images=94, we don=92t allow to =93Edit Package=94, I think.
Because with an image only, we can=92t generate the packages from it, you c=
an=92t assume there is a build directory (tmp/), is my understanding correc=
t?

--
Shane
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


