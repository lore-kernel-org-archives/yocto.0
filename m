Return-Path: <shane.wang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F05E0059B
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 04:48:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2012 04:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="119645332"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2012 04:48:45 -0800
Received: from pgsmsx103.gar.corp.intel.com (10.221.44.82) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 2 Feb 2012 20:48:06 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 2 Feb 2012 20:48:05 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Thu, 2 Feb 2012 20:48:04 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>,
	"Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: RFC: Hob 1.2 design
Thread-Index: AQHM1ghN2ta+vDnY0kiXcbK0irRQ85YS108ggAGuLCCAAHlrgIAGmYWAgAb8MNCAAqn0gIACotQAgABGdBCAAFS8AIAAmk2AgABm6zA=
Date: Thu, 2 Feb 2012 12:48:03 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255@SHSMSX102.ccr.corp.intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9F5F@SHSMSX102.ccr.corp.intel.com>
	<CB4F0427.6A93%belen.barros.pena@intel.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
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
X-List-Received-Date: Thu, 02 Feb 2012 12:48:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255SHSMSX102ccrcor_"

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255SHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please see my feedbacks embedded in red.

Thanks.
--
Shane
From: "Wang, Shane" <shane.wang@intel.com<mailto:shane.wang@intel.com>>
Date: Wed, 1 Feb 2012 14:49:38 +0000
To: "Belen Barros Pena (Intel)" <belen.barros.pena@intel.com<mailto:belen.b=
arros.pena@intel.com>>, "Xu, Dongxiao" <dongxiao.xu@intel.com<mailto:dongxi=
ao.xu@intel.com>>, "Lu, Lianhao" <lianhao.lu@intel.com<mailto:lianhao.lu@in=
tel.com>>
Subject: RE: Hob 1.2 next steps

<!-- /* Font Definitions */ @font-face {font-family:SimSun; panose-1:2 1 6 =
0 3 1 1 1 1 1;} @font-face {font-family:"Cambria Math"; panose-1:2 4 5 3 5 =
4 6 3 2 4;} @font-face {font-family:Calibri; panose-1:2 15 5 2 2 2 4 3 2 4;=
} @font-face {font-family:Tahoma; panose-1:2 11 6 4 3 5 4 4 2 4;} @font-fac=
e {font-family:SimSun; panose-1:2 1 6 0 3 1 1 1 1 1;} /* Style Definitions =
*/ p.MsoNormal, li.MsoNormal, div.MsoNormal {margin:0cm; margin-bottom:.000=
1pt; font-size:12.0pt; font-family:"Times New Roman","serif";} a:link, span=
.MsoHyperlink {mso-style-priority:99; color:blue; text-decoration:underline=
;} a:visited, span.MsoHyperlinkFollowed {mso-style-priority:99; color:purpl=
e; text-decoration:underline;} p.MsoAcetate, li.MsoAcetate, div.MsoAcetate =
{mso-style-priority:99; mso-style-link:"Balloon Text Char"; margin:0cm; mar=
gin-bottom:.0001pt; font-size:8.0pt; font-family:"Times New Roman","serif";=
} p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph {mso-style-=
priority:34; margin:0cm; margin-bottom:.0001pt; text-indent:21.0pt; font-si=
ze:12.0pt; font-family:"Times New Roman","serif";} span.BalloonTextChar {ms=
o-style-name:"Balloon Text Char"; mso-style-priority:99; mso-style-link:"Ba=
lloon Text"; font-family:SimSun;} span.EmailStyle20 {mso-style-type:persona=
l; font-family:"Calibri","sans-serif"; color:#1F497D;} span.EmailStyle21 {m=
so-style-type:personal; font-family:"Courier New"; color:blue; font-weight:=
normal; font-style:normal; text-decoration:none none;} span.EmailStyle22 {m=
so-style-type:personal; font-family:"Courier New"; color:blue; font-weight:=
normal; font-style:normal; text-decoration:none none;} span.EmailStyle23 {m=
so-style-type:personal-reply; font-family:"Calibri","sans-serif"; color:#1F=
497D;} .MsoChpDefault {mso-style-type:export-only; font-size:10.0pt;} @page=
 WordSection1 {size:612.0pt 792.0pt; margin:72.0pt 90.0pt 72.0pt 90.0pt;} d=
iv.WordSection1 {page:WordSection1;} /* List Definitions */ @list l0 {mso-l=
ist-id:1335497491; mso-list-template-ids:-608031632;} @list l1 {mso-list-id=
:1405881917; mso-list-type:hybrid; mso-list-template-ids:-2065393162 -12716=
18664 67698713 67698715 67698703 67698713 67698715 67698703 67698713 676987=
15;} @list l1:level1 {mso-level-text:"%1\)"; mso-level-tab-stop:none; mso-l=
evel-number-position:left; margin-left:18.0pt; text-indent:-18.0pt;} @list =
l1:level2 {mso-level-number-format:alpha-lower; mso-level-text:"%2\)"; mso-=
level-tab-stop:none; mso-level-number-position:left; margin-left:42.0pt; te=
xt-indent:-21.0pt;} @list l1:level3 {mso-level-number-format:roman-lower; m=
so-level-tab-stop:none; mso-level-number-position:right; margin-left:63.0pt=
; text-indent:-21.0pt;} @list l1:level4 {mso-level-tab-stop:none; mso-level=
-number-position:left; margin-left:84.0pt; text-indent:-21.0pt;} @list l1:l=
evel5 {mso-level-number-format:alpha-lower; mso-level-text:"%5\)"; mso-leve=
l-tab-stop:none; mso-level-number-position:left; margin-left:105.0pt; text-=
indent:-21.0pt;} @list l1:level6 {mso-level-number-format:roman-lower; mso-=
level-tab-stop:none; mso-level-number-position:right; margin-left:126.0pt; =
text-indent:-21.0pt;} @list l1:level7 {mso-level-tab-stop:none; mso-level-n=
umber-position:left; margin-left:147.0pt; text-indent:-21.0pt;} @list l1:le=
vel8 {mso-level-number-format:alpha-lower; mso-level-text:"%8\)"; mso-level=
-tab-stop:none; mso-level-number-position:left; margin-left:168.0pt; text-i=
ndent:-21.0pt;} @list l1:level9 {mso-level-number-format:roman-lower; mso-l=
evel-tab-stop:none; mso-level-number-position:right; margin-left:189.0pt; t=
ext-indent:-21.0pt;} @list l2 {mso-list-id:1693413572; mso-list-type:hybrid=
; mso-list-template-ids:2031769436 699536156 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;} @list l2:level1 {mso-level-star=
t-at:0; mso-level-number-format:bullet; mso-level-text:-; mso-level-tab-sto=
p:none; mso-level-number-position:left; margin-left:18.0pt; text-indent:-18=
.0pt; font-family:"Calibri","sans-serif"; mso-fareast-font-family:SimSun;} =
@list l2:level2 {mso-level-tab-stop:72.0pt; mso-level-number-position:left;=
 text-indent:-18.0pt;} @list l2:level3 {mso-level-tab-stop:108.0pt; mso-lev=
el-number-position:left; text-indent:-18.0pt;} @list l2:level4 {mso-level-t=
ab-stop:144.0pt; mso-level-number-position:left; text-indent:-18.0pt;} @lis=
t l2:level5 {mso-level-tab-stop:180.0pt; mso-level-number-position:left; te=
xt-indent:-18.0pt;} @list l2:level6 {mso-level-tab-stop:216.0pt; mso-level-=
number-position:left; text-indent:-18.0pt;} @list l2:level7 {mso-level-tab-=
stop:252.0pt; mso-level-number-position:left; text-indent:-18.0pt;} @list l=
2:level8 {mso-level-tab-stop:288.0pt; mso-level-number-position:left; text-=
indent:-18.0pt;} @list l2:level9 {mso-level-tab-stop:324.0pt; mso-level-num=
ber-position:left; text-indent:-18.0pt;} @list l3 {mso-list-id:2051028364; =
mso-list-template-ids:-356333876;} @list l3:level1 {mso-level-tab-stop:36.0=
pt; mso-level-number-position:left; text-indent:-18.0pt;} @list l3:level2 {=
mso-level-tab-stop:72.0pt; mso-level-number-position:left; text-indent:-18.=
0pt;} @list l3:level3 {mso-level-tab-stop:108.0pt; mso-level-number-positio=
n:left; text-indent:-18.0pt;} @list l3:level4 {mso-level-tab-stop:144.0pt; =
mso-level-number-position:left; text-indent:-18.0pt;} @list l3:level5 {mso-=
level-tab-stop:180.0pt; mso-level-number-position:left; text-indent:-18.0pt=
;} @list l3:level6 {mso-level-tab-stop:216.0pt; mso-level-number-position:l=
eft; text-indent:-18.0pt;} @list l3:level7 {mso-level-tab-stop:252.0pt; mso=
-level-number-position:left; text-indent:-18.0pt;} @list l3:level8 {mso-lev=
el-tab-stop:288.0pt; mso-level-number-position:left; text-indent:-18.0pt;} =
@list l3:level9 {mso-level-tab-stop:324.0pt; mso-level-number-position:left=
; text-indent:-18.0pt;} ol {margin-bottom:0cm;} ul {margin-bottom:0cm;} -->
Thank you for making the video.

We three have some comments and questions on the video.

1) the style of the package view is not consistent with the one of recipe v=
iew.
True. I was planning to redesign the recipe view  and the package view to b=
ring them in line with the Packages screen. I think I need to clarify the d=
ifference between windows and dialogues in the interface. In the design sho=
wn in the video, Hob has one window, which changes depending on the buildin=
g stage to show one of the following screens: Image configuration, Building=
 packages, Packages, Building image and Image details. The 'recipe view' an=
d the 'package view' are dialogues that you launch via the 'view recipes' a=
nd 'view packages' buttons. Therefore, the Packages screen that displays af=
ter the packages are built, and the package dialogue you launch using the '=
view packages' button, are 2 different things.

[Shane]: OK, I understand they are 2 difference screens. But actually both =
can reuse the same screen, because I didn't see any functional difference b=
etween the Packages screen and the Packages dialog.

In your previous video, recipe view has sort of "summary" which lists all r=
ecipes selected on the right side. Can we remove the tab "Included" and mak=
e a "summary" for the package view? And with the tab "Included", we need to=
 scroll down to find a package or locate it in the search box, and then do =
"Remove" for example, it is not better than the "summary" because the "summ=
ary" can show all or more.

I agree that the Packages screen should look similar to the Recipes dialogu=
e and the Packages dialogue. But after seeing the 'summary' working it seem=
s to me that it is not the best solution. The goals of the summary were:

  1.  Allow users to easily see what's selected to be included in their ima=
ge
  2.  Allow users to easily understand what's brought by what
I am not sure the existing summary does a good job at any of the two. Space=
 restrictions make reading what's included quite difficult (particularly wh=
en the names of packages or recipes wrap), and the layout does not facilita=
te skimming content, which is what you'll do with the summary (you won't re=
ad it all from top to bottom: you'll skim the recipes/packages to find some=
thing you are looking for). The relationship between what brings what, repr=
esented by the highlight, is lost once you perform a new selection. The sum=
mary also creates a lot of clutter in the interface: the screen is so busy,=
 it's hard to know what to look at.

[Shane]: I agree with you on "you won't read it all from top to bottom". Bu=
t I found the summary had another advantage which "Included" in the current=
 Packages screen doesn't have. That is: when I select one more package, wha=
t is brought by it will be highlighted, so I can see the difference between=
 before and after I select.

The existing Packages screen presents less information at any given time: i=
t feels cleaner and easier to read. It's true that it requires users to sel=
ect the Included tab in order to see what's to be included in their image, =
but it provides a much more focused interface. The 'brought by' column avoi=
ds losing the relationship between what brings what, and the sorting and se=
arching mechanisms should minimise the need for scrolling.

After multiple iterations (it took a very long time to design that screen),=
 I believe the Included tab is a better solution than the Summary. If you a=
re convinced that the Summary is better, we'll go for it, but I felt I had =
to explain my concerns with it.

[Shane]: Both have advantages and disadvantages. I don't think it is hard t=
o implement "Included". On the contrary, the Summary is;-) I also like to h=
ear some feedbacks from the community and the others.
BTW: do you mean in the Recipes dialog, we also replace the Summary with th=
e tab "Included"?
2) ditto, I see there is a button "Build Image" in the package view. I know=
 what the purpose is. But for the recipe view, there is no button. We also =
can "build image" or "build package" in the recipe view without going back =
to the main window at 1:39. Do you mind that we simplify by removing "Build=
 Image" in the package view?
I think there is some confusion about the Packages screen (which is a windo=
w), and what you call the 'package view' and 'recipe view', which are dialo=
gues. This is really my fault: I should have explained this better.
I've designed the Hob interface as a multi-step process with 3 steps, each =
represented by a screen displayed in the main Hob window:
Step 1 - Image configuration screen: users input the build parameters, such=
 as machine, base image and recipes
Step 2 - Package screen: this is not a mandatory step. You can skip it by s=
electing 'Build image' in Step 1. Users review and might edit the list of p=
ackages to be included in their image, and then proceed to build the image.=
 The 'Build image' button is required to proceed to Step 3
Step 3 - Image details screen: the image has been built, and users can sele=
ct from a range of possible actions

[Shane]: I see. They are 2 different things.

Since the above screens are steps in a process, they require an action (i.e=
. a button) to move to the next step of the process.

The recipes and packages dialogues are not steps in the building process: t=
hey are contained pieces of functionality that can be displayed on demand. =
The recipes dialogue allows users to see and edit the recipes included in t=
he base image. I assume the packages dialogue allows users to include alrea=
dy built packages in the base image (if this is not correct please let me k=
now).

[Shane]: Your assumption is right.

The actions in any dialogue should be 'Save' and 'Cancel'. Those actions we=
re not included in the original design because I didn't think of them as di=
alogues: more as inspectors like the ones in Gimp. You implemented them as =
dialogues, which I think works really well (probably better than as inspect=
ors I must say): we just need to add those 'Save' and 'Cancel' buttons to t=
hem.

I hope this explains why we have a 'Build image' button in the Packages scr=
een, but not in the recipes and packages dialogues.

[Shane]: Understand.

3) After clicking "My images" to open an image, how does UI determine to sh=
ow "Run Image" or "Write to Storage", or "Deploy" or "View Image files"?

First of all, you are right: 'Deploy' and 'Write to storage' are exactly th=
e same thing. I meant to use 'Write to storage' everywhere: sorry about tha=
t. My bad :(

- If the building output included a live image, the Image details screen sh=
ows the 'Write to storage' button
- If the image is a qemu image, the Image details screen shows the 'Run ima=
ge' button. Clicking the button starts up the virtual machine

[Shane]: Makes sense. A technical question for expert in the mail list, how=
 can we distinguish whether an image is a QEMU image or an image for real h=
ardware, regarding the fact users can change the image name as they want?

- Otherwise the Image details screen shows the 'View image files' button

[Shane]: Can you give an example about "Otherwise"?

I hope this makes sense. Otherwise let me know.

4) At 6:36, how can the user go back to the main window at 1:39? Should the=
 user wait until the build is finished or stop it by clicking "Stop build"?
Exactly: the only option at that point is to stop the build. I haven't desi=
gned what happens when you stop the build yet, but I'd say something simila=
r to what happens now: a prompt asks users to confirm that they want to sto=
p the build, and if yes Hob reverts back to the screen from which the user =
started the building image process, which can be the Image configuration sc=
reen or the Packages screen.

[Shane]: Understand. If any error happens when building, it will stay there=
 because I assume users want to see the log. Then how can users get back to=
 the Image configuration screen or the Package screen, after closing it?
5) For "save template" and "load template", the only chance for users to do=
 "save template" is when the build is done, yes?
Well, I don't know. That's the way it seems to work in the latest version o=
f Hob, but it doesn't mean it has to stay that way.

However, we think users can save any settings for build environments, and a=
ny selection of packages or recipes in an image even though the build doesn=
't start. Then next time he/she can resume the job by starting with the stu=
ffs saved.
I totally agree with you that users should be able to save a template befor=
e building the image.

Again, we are considering whether it is good to put "load template" and "sa=
ve template" together, because they are similar actions.
I don't think I would do it that way. 'Load template' is a way to initiate =
the building process, and therefore something you might want to do at any t=
ime. As such, it makes sense to make it an option in the toolbar, like 'ope=
ning an image', where is always available.

'Save template' is something that sequentially comes after configuring the =
image parameters. It's like a function that takes as parameters a machine a=
nd a base image (with its recipes or packages). Therefore the action of sav=
ing a template only makes sense when a machine and base image have been sel=
ected. If you represent it as a button in the toolbar, you will have to sho=
w it in an inactive state until a machine and base image have been selected=
. Otherwise, what are you saving as a template? As such, it makes sense to =
display it after those parameters have been set, i.e., after the 'View reci=
pes' and 'View packages' buttons.

If you agree with the above, I can review the Image configuration screen an=
d add a 'Save as template' action to it.

[Shane]: OK, I agree to enable the button "Save as template" after all para=
meters in the Image configuration screen have been set. Keep this open, ple=
ase.
6) At 7:07, "view files" is the same as "My images"?

I don't think so. 'My images' would open a File Chooser Dialog
http://developer.gnome.org/gtk3/stable/GtkFileChooserDialog.html
Selecting an image file from the file chooser dialog would open the Hob "Im=
age details' screen for the selected image file.

"View files" would open a regular file manager window in the tmp/deploy/ima=
ges directory. Selecting the image file from this file manager window would=
 simply open the image in the default application assigned to the file exte=
nsion (it would not open the image details screen in Hob). "View files" is =
just a quick way to navigate to the tmp/deploy/images directory.

[Shane]: OK, I see.
7) We are thinking "My images" is similar as "Load template", because the i=
mage contains the info of settings etc. so does the template. The only diff=
 is after opening an image, we can deploy it or run it. But for template, i=
t is sort of "virtual" stuff, we have to build according to the definitions=
 of the template. So, to some extent, "My images" =3D "Template" + able to =
deploy and run, what do you think?
I agree, but I also think that the ability to deploy and run that comes wit=
h images and is missing from templates is a significant difference. It mean=
s that the logical next steps after opening a template and opening an image=
 are very different too.
After opening a template the logical next steps are: edit the parameters if=
 you wish, then build. That's why loading a template brings you to the Imag=
e configuration screen, where you can edit parameters and build.

After opening an image the logical next steps are deploy / run. That's why =
opening an image brings you to the Image details screen, where you can depl=
oy / run.
[Shane]: But on the Image details screen, you can click "Edit Configuration=
" to go to the Image configuration screen. Then the rest is totally the sam=
e as the above.
A technical question comes to me, it is also for experts. Is there a way to=
 modify bitbake to write some more information into the target image, and f=
or Hob to unpack and fetch the information later?
For this part, we also consider the client/server mode with XMLRPC: We have=
 the capability to run bitbake server on the server side, but UI on the cli=
ent side. So the image in "My images" always is generated on the server sid=
e, and the template in "Load template" is a config file on the client side.
It sort of makes sense to me that templates are local files, while images a=
re kept on a server where they can be shared, but I definitely don't know e=
nough to have an opinion. You guys are the experts on this! :)
I guess that if no client / server mode is set up and I am running everythi=
ng locally, then images will also be kept locally. Is that the case?

[Shane]: Yes, that is. Temporarily we can skip the case running on client a=
nd server. We assume all are on the client.
8) We already saw some buttons "Settings", "Deploy image", "Run image", "Lo=
ad Template" and "Save Template", "Build New image", "Edit Configuration" o=
r "Edit packages", "View image files" on different windows. So probably tha=
t makes switching between windows a bit complex. For instance, At 8:24, cli=
cking "Edit packages" will go back to the package view. But what if users j=
ust make a mistake on the UI and want to go back to the window at 8:24?
Well, they can't :) The Packages screen is an intermediate step that allows=
 you to view and edit the packages to be included in your image: nothing el=
se. If you land there by mistake, you can still get out via the 'Back to im=
age configuration' option. From there, you can go back to the Image configu=
ration screen by opening the image you built.

We could change the "Build image" button into a go forward button, and if t=
he user makes any changes to the packages display again the 'Build image' b=
utton, but I am not sure if it would be worth the development effort.

Providing access to all previous screens could be done by some kind of brea=
dcrumb (a representation of each step in the process you can click on to ac=
cess the step), but breadcrumbs are problematic when the number of steps in=
 a process can change, like in Hob. Remember than you can decide to go thro=
ugh the packages step, or skip it and build the image directly.

[Shane]: Personally, I don't like to change "Build image" to a "Go forward"=
 button, because it would be possible that users want to rebuild the image =
without any change.
With many buttons on many windows, we have a lot of combinations, then we h=
ave a lot of states for the UI.

True: there are a few things you can do in the Image details screen. You ca=
n save your image as a template, you can edit the image, you can view the i=
mage files,  you can deploy or run the image when applicable, and you can b=
uild a new image. You can also open a Template or a different image. All th=
ose are reasonable next steps once you have reached the end of building pro=
cess, and all of them should be present in the interface.
And we are thinking "Settings", "Deploy image", "Run image", "Load Template=
" and "Save Template" are important for us, and whether we can use menus or=
 buttons on a toolbar. We prefer the latter, and prefer we have a main wind=
ow and others are all dialogs inherited from the main window. What do you t=
hink on this?
I can see your point here. I did consider that structure after I saw it wor=
king. It's quite nice. However, I can see a couple of problems with it:

  1.  It brings the concept of progressive disclosure (new options displayi=
ng as a result of user selections) that we use in the Image configuration s=
creen to a breaking point. There are too many things happening in that main=
 window. When you start building, the progress bar has to display at the bo=
ttom of the screen, which looks awkward, and there is not enough space to p=
rovide clear next steps after the packages and image have been built.
  2.  Having 'Deploy image' and 'Run image' buttons in the toolbar will cau=
se problems. They fire actions that require a parameter (an image to deploy=
 or run). They could get this parameter by taking the last image that has b=
een built, and deploy or run that image. But what if no image has been buil=
t yet? What if the last image was built a few days ago and it's not at all =
the image you want to deploy or run? The alternative would be asking the us=
er what's the image she wants to deploy or run. You would open a file choos=
er dialog for that. But imagine the following situation: I've just finished=
 building a qemu image. The "congratulations" message and the path to my im=
age are displayed at the bottom of the main screen. I want to run my image,=
 so I click on the 'run image' button in the toolbar, expecting it of cours=
e to run the qemu image I've just built. Instead, it pops up a file chooser=
 dialog and I have to select the image I just built to run it! Such a syste=
m would feel a bit dumb: why is it asking me which image do I want to run? =
Isn't it obvious I want to run the qemu image I've just built? To avoid thi=
s type of 'dumb' reactions by the UI, actions should be displayed where and=
 when applicable. Actions in toolbars and menus are always present, which m=
eans they are always applicable, they make sense at all times, independentl=
y of the system state: I call them global actions. Opening a template, open=
ing an image or accessing settings are kind of global actions. Running or d=
eploying an image are 'contextual' actions, they only make sense when the s=
ystem is in a certain state: for example, right after building a qemu image=
. If you position global actions in toolbars or menus, you will have to mak=
e extensive use of inactive states, which means displaying things that don'=
t make sense in such a way that you cannot use them (which is just noise), =
or make them behave in different ways depending on the system state (which =
is confusing).
9) a small question as Dave has, what is the diff between "deploy image"and=
 "write to storage"? We think they are the same.
Dave is completely right: 'Deploy' and 'Write to storage' are exactly the s=
ame thing. I meant to use 'Write to storage' everywhere: sorry about that. =
My bad :(

[Shane]: Three more we want to consider:
1. we want to add proxy setting into "Settings" to support proxy
2. When users fail to build images, there is no option or button to clean a=
ll (like sstate) but bitbake command has (bitbake -c cleanall). We hope to =
add it into the GUI.
3. can the button "Settings" be there only on the Image configuration scree=
n? It doesn't make any sense to set the parameters on the Image details scr=
een, agree?
    Ditto for "Load Template" on the Image details screen. We also can init=
iate a new build by "Build new image" and "Load Template", thoughts?
Sorry, many feedbacks;-) And we are also thinking to simplify the rest of t=
he design and finalize asap so we can finish the implementation before the =
end of M3. (the end of Feb).

I totally understand you might not have time to implement the design I've s=
ent. If this is the problem, please do let me know, and let's talk about wh=
at's feasible. Maybe we could keep the current structure (all steps in the =
main screen), but look for some alternative options to position the 'Deploy=
 image', 'Run image' and 'Save as template' actions ... not in the toolbar =
or menus, please! ;)

[Shane]: We will try our best.
Another FYI, we get your feedbacks in the two pdf files you sent previously=
 and are revising the UI.

Thanks.

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255SHSMSX102ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:891188918;
	mso-list-template-ids:-306004424;}
@list l0:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:1021011862;
	mso-list-template-ids:1629520496;}
@list l1:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1221745870;
	mso-list-template-ids:673864318;}
@list l2:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:1278292444;
	mso-list-template-ids:426408140;}
@list l3:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4
	{mso-list-id:1976332641;
	mso-list-template-ids:-1205074236;}
@list l4:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"word-wrap: bre=
ak-word;-webkit-nbsp-mode: space;-webkit-line-break: after-white-space">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please see my feedbacks emb=
edded in red.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D">Shane<o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;;color:black">From:
</span></b><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black">&quot;Wang, Shane&quot; &lt;</span><span =
lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:black"><a href=3D"mailto:shane.wang@intel.com"><=
span style=3D"font-size:12.0pt">shane.wang@intel.com</span></a></span><span=
 lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:black">&gt;<br>
<b>Date: </b>Wed, 1 Feb 2012 14:49:38 &#43;0000<br>
<b>To: </b>&quot;Belen Barros Pena (Intel)&quot; &lt;</span><span lang=3D"E=
N-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:black"><a href=3D"mailto:belen.barros.pena@intel.com"><sp=
an style=3D"font-size:12.0pt">belen.barros.pena@intel.com</span></a></span>=
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-se=
rif&quot;;color:black">&gt;,
 &quot;Xu, Dongxiao&quot; &lt;</span><span lang=3D"EN-US" style=3D"font-siz=
e:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black=
"><a href=3D"mailto:dongxiao.xu@intel.com"><span style=3D"font-size:12.0pt"=
>dongxiao.xu@intel.com</span></a></span><span lang=3D"EN-US" style=3D"font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">&gt;,
 &quot;Lu, Lianhao&quot; &lt;</span><span lang=3D"EN-US" style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"=
><a href=3D"mailto:lianhao.lu@intel.com"><span style=3D"font-size:12.0pt">l=
ianhao.lu@intel.com</span></a></span><span lang=3D"EN-US" style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">&gt;<br>
<b>Subject: </b>RE: Hob 1.2 next steps</span><span lang=3D"EN-US" style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;col=
or:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.5pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black">&lt;!-- /* Font Definitions *=
/ @font-face {font-family:SimSun; panose-1:2 1 6 0 3 1 1 1 1 1;} @font-face=
 {font-family:&quot;Cambria Math&quot;; panose-1:2 4 5 3 5 4 6 3 2 4;}
 @font-face {font-family:Calibri; panose-1:2 15 5 2 2 2 4 3 2 4;} @font-fac=
e {font-family:Tahoma; panose-1:2 11 6 4 3 5 4 4 2 4;} @font-face {font-fam=
ily:SimSun; panose-1:2 1 6 0 3 1 1 1 1 1;} /* Style Definitions */ p.MsoNor=
mal, li.MsoNormal, div.MsoNormal
 {margin:0cm; margin-bottom:.0001pt; font-size:12.0pt; font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;;} a:link, span.MsoHyperlink {mso-styl=
e-priority:99; color:blue; text-decoration:underline;} a:visited, span.MsoH=
yperlinkFollowed {mso-style-priority:99; color:purple;
 text-decoration:underline;} p.MsoAcetate, li.MsoAcetate, div.MsoAcetate {m=
so-style-priority:99; mso-style-link:&quot;Balloon Text Char&quot;; margin:=
0cm; margin-bottom:.0001pt; font-size:8.0pt; font-family:&quot;Times New Ro=
man&quot;,&quot;serif&quot;;} p.MsoListParagraph, li.MsoListParagraph,
 div.MsoListParagraph {mso-style-priority:34; margin:0cm; margin-bottom:.00=
01pt; text-indent:21.0pt; font-size:12.0pt; font-family:&quot;Times New Rom=
an&quot;,&quot;serif&quot;;} span.BalloonTextChar {mso-style-name:&quot;Bal=
loon Text Char&quot;; mso-style-priority:99; mso-style-link:&quot;Balloon
 Text&quot;; font-family:SimSun;} span.EmailStyle20 {mso-style-type:persona=
l; font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; color:#1F497D;} =
span.EmailStyle21 {mso-style-type:personal; font-family:&quot;Courier New&q=
uot;; color:blue; font-weight:normal; font-style:normal; text-decoration:no=
ne
 none;} span.EmailStyle22 {mso-style-type:personal; font-family:&quot;Couri=
er New&quot;; color:blue; font-weight:normal; font-style:normal; text-decor=
ation:none none;} span.EmailStyle23 {mso-style-type:personal-reply; font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;; color:#1F497D;}
 .MsoChpDefault {mso-style-type:export-only; font-size:10.0pt;} @page WordS=
ection1 {size:612.0pt 792.0pt; margin:72.0pt 90.0pt 72.0pt 90.0pt;} div.Wor=
dSection1 {page:WordSection1;} /* List Definitions */ @list l0 {mso-list-id=
:1335497491; mso-list-template-ids:-608031632;}
 @list l1 {mso-list-id:1405881917; mso-list-type:hybrid; mso-list-template-=
ids:-2065393162 -1271618664 67698713 67698715 67698703 67698713 67698715 67=
698703 67698713 67698715;} @list l1:level1 {mso-level-text:&quot;%1\)&quot;=
; mso-level-tab-stop:none; mso-level-number-position:left;
 margin-left:18.0pt; text-indent:-18.0pt;} @list l1:level2 {mso-level-numbe=
r-format:alpha-lower; mso-level-text:&quot;%2\)&quot;; mso-level-tab-stop:n=
one; mso-level-number-position:left; margin-left:42.0pt; text-indent:-21.0p=
t;} @list l1:level3 {mso-level-number-format:roman-lower;
 mso-level-tab-stop:none; mso-level-number-position:right; margin-left:63.0=
pt; text-indent:-21.0pt;} @list l1:level4 {mso-level-tab-stop:none; mso-lev=
el-number-position:left; margin-left:84.0pt; text-indent:-21.0pt;} @list l1=
:level5 {mso-level-number-format:alpha-lower;
 mso-level-text:&quot;%5\)&quot;; mso-level-tab-stop:none; mso-level-number=
-position:left; margin-left:105.0pt; text-indent:-21.0pt;} @list l1:level6 =
{mso-level-number-format:roman-lower; mso-level-tab-stop:none; mso-level-nu=
mber-position:right; margin-left:126.0pt;
 text-indent:-21.0pt;} @list l1:level7 {mso-level-tab-stop:none; mso-level-=
number-position:left; margin-left:147.0pt; text-indent:-21.0pt;} @list l1:l=
evel8 {mso-level-number-format:alpha-lower; mso-level-text:&quot;%8\)&quot;=
; mso-level-tab-stop:none; mso-level-number-position:left;
 margin-left:168.0pt; text-indent:-21.0pt;} @list l1:level9 {mso-level-numb=
er-format:roman-lower; mso-level-tab-stop:none; mso-level-number-position:r=
ight; margin-left:189.0pt; text-indent:-21.0pt;} @list l2 {mso-list-id:1693=
413572; mso-list-type:hybrid; mso-list-template-ids:2031769436
 699536156 67698691 67698693 67698689 67698691 67698693 67698689 67698691 6=
7698693;} @list l2:level1 {mso-level-start-at:0; mso-level-number-format:bu=
llet; mso-level-text:-; mso-level-tab-stop:none; mso-level-number-position:=
left; margin-left:18.0pt; text-indent:-18.0pt;
 font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; mso-fareast-font-f=
amily:SimSun;} @list l2:level2 {mso-level-tab-stop:72.0pt; mso-level-number=
-position:left; text-indent:-18.0pt;} @list l2:level3 {mso-level-tab-stop:1=
08.0pt; mso-level-number-position:left; text-indent:-18.0pt;}
 @list l2:level4 {mso-level-tab-stop:144.0pt; mso-level-number-position:lef=
t; text-indent:-18.0pt;} @list l2:level5 {mso-level-tab-stop:180.0pt; mso-l=
evel-number-position:left; text-indent:-18.0pt;} @list l2:level6 {mso-level=
-tab-stop:216.0pt; mso-level-number-position:left;
 text-indent:-18.0pt;} @list l2:level7 {mso-level-tab-stop:252.0pt; mso-lev=
el-number-position:left; text-indent:-18.0pt;} @list l2:level8 {mso-level-t=
ab-stop:288.0pt; mso-level-number-position:left; text-indent:-18.0pt;} @lis=
t l2:level9 {mso-level-tab-stop:324.0pt;
 mso-level-number-position:left; text-indent:-18.0pt;} @list l3 {mso-list-i=
d:2051028364; mso-list-template-ids:-356333876;} @list l3:level1 {mso-level=
-tab-stop:36.0pt; mso-level-number-position:left; text-indent:-18.0pt;} @li=
st l3:level2 {mso-level-tab-stop:72.0pt;
 mso-level-number-position:left; text-indent:-18.0pt;} @list l3:level3 {mso=
-level-tab-stop:108.0pt; mso-level-number-position:left; text-indent:-18.0p=
t;} @list l3:level4 {mso-level-tab-stop:144.0pt; mso-level-number-position:=
left; text-indent:-18.0pt;} @list
 l3:level5 {mso-level-tab-stop:180.0pt; mso-level-number-position:left; tex=
t-indent:-18.0pt;} @list l3:level6 {mso-level-tab-stop:216.0pt; mso-level-n=
umber-position:left; text-indent:-18.0pt;} @list l3:level7 {mso-level-tab-s=
top:252.0pt; mso-level-number-position:left;
 text-indent:-18.0pt;} @list l3:level8 {mso-level-tab-stop:288.0pt; mso-lev=
el-number-position:left; text-indent:-18.0pt;} @list l3:level9 {mso-level-t=
ab-stop:324.0pt; mso-level-number-position:left; text-indent:-18.0pt;} ol {=
margin-bottom:0cm;} ul {margin-bottom:0cm;}
 --&gt;</span><span lang=3D"EN-US" style=3D"font-size:8.5pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">Thank you for making the video.</span><span =
lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"c=
olor:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">We three have some comments and questions on=
 the video.</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"c=
olor:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">1) the style of the package view is not cons=
istent with the one of recipe view.
</span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black">True. I was planning to redes=
ign the recipe view &nbsp;and the package view to bring them in line with t=
he Packages screen. I think I need to clarify the difference between
 windows and dialogues in the interface. In the design shown in the video, =
Hob has one window, which changes depending on the building stage to show o=
ne of the following screens:&nbsp;Image configuration, Building packages, P=
ackages, Building image and Image details.
 The 'recipe view' and the 'package view' are dialogues that you launch via=
 the 'view recipes' and 'view packages' buttons. Therefore, the Packages sc=
reen that displays after the packages are built, and the package dialogue y=
ou launch using the 'view packages'
 button, are 2 different things.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: OK, I understand they =
are 2 difference screens. But actually both can reuse the same screen, beca=
use I didn&#8217;t see any functional difference between the Packages
 screen and the Packages dialog.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.5pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F=
497D">In your previous video, recipe view has sort of &#8220;summary&#8221;=
 which lists all recipes selected on the right side. Can we remove the tab
 &#8220;Included&#8221; and make a &#8220;summary&#8221; for the package vi=
ew? And with the tab &#8220;Included&#8221;, we need to scroll down to find=
 a package or locate it in the search box, and then do &#8220;Remove&#8221;=
 for example, it is not better than the &#8220;summary&#8221; because the &=
#8220;summary&#8221; can show
 all or more.</span></span><span lang=3D"EN-US" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.5pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:bla=
ck">I agree that the Packages screen should look similar to the Recipes dia=
logue and the Packages dialogue. But after seeing the 'summary'
 working it seems to me that it is not the best solution. The goals of the =
summary were:</span></span><span lang=3D"EN-US" style=3D"font-size:8.5pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</div>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;mso-list:l1 level1 lfo1">
<span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;">Allow users to easily see what'=
s selected to be included in their image</span></span><span lang=3D"EN-US" =
style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p=
></span></li><li class=3D"MsoNormal" style=3D"color:black;mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto;mso-list:l1 level1 lfo1">
<span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;">Allow users to easily understan=
d what's brought by what</span></span><span lang=3D"EN-US" style=3D"font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></li></o=
l>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black">I am not sure the existing su=
mmary does a good job at any of the two. Space restrictions make reading wh=
at's included quite difficult (particularly when the names
 of packages or recipes wrap), and the layout does not facilitate skimming =
content, which is what you'll do with the summary (you won't read it all fr=
om top to bottom: you'll skim the recipes/packages to find something you ar=
e looking for). The relationship
 between what brings what, represented by the highlight, is lost once you p=
erform a new selection. The summary also creates a lot of clutter in the in=
terface: the screen is so busy, it's hard to know what to look at.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: I agree with you on &#=
8220;</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:black">you won't read it all from top to bottom=
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:red">&#8221;.
 But I found the summary had another advantage which &#8220;Included&#8221;=
 in the current Packages screen doesn&#8217;t have. That is: when I select =
one more package, what is brought by it will be highlighted, so I can see t=
he difference between before and after I select.</span><span lang=3D"EN-US"=
 style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F4=
97D"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black">The existing Packages screen =
presents less information at any given time: it feels cleaner and easier to=
 read. It's true that it requires users to select the Included
 tab in order to see what's to be included in their image, but it provides =
a much more focused interface. The 'brought by' column avoids losing the re=
lationship between what brings what, and the sorting and searching mechanis=
ms should minimise the need for
 scrolling.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:black">After multiple iterations (it=
 took a very long time to design that screen), I believe the Included tab i=
s a better solution than the Summary. If you are convinced
 that the Summary is better, we'll go for it, but I felt I had to explain m=
y concerns with it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Both have advantages a=
nd disadvantages. I don&#8217;t think it is hard to implement &#8220;Includ=
ed&#8221;. On the contrary, the Summary is;-) I also like to hear some feed=
backs
 from the community and the others.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">BTW: do you mean in the Recipes=
 dialog, we also replace the Summary with the tab &#8220;Included&#8221;?<o=
:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">2) ditto, I see there is a button &#8220;Bui=
ld Image&#8221; in the package view. I know what the purpose is. But for
 the recipe view, there is no button. We also can &#8220;build image&#8221;=
 or &#8220;build package&#8221; in the recipe view without going back to th=
e main window at 1:39. Do you mind that we simplify by removing &#8220;Buil=
d Image&#8221; in the package view?</span><span lang=3D"EN-US" style=3D"fon=
t-size:8.5pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:black">I think there is some confusion about the Packages screen (which =
is a window), and what you call the 'package
 view' and 'recipe view', which are dialogues. This is really my fault: I s=
hould have explained this better.</span></span><span lang=3D"EN-US" style=
=3D"font-size:8.5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:black">I've designed the Hob interface as a multi-step process with 3 st=
eps, each represented by a screen displayed
 in the main Hob window:</span></span><span lang=3D"EN-US" style=3D"font-si=
ze:8.5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Step 1 &=
#8211; Image configuration screen: users input the build parameters, such a=
s machine, base image and recipes</span></span><span lang=3D"EN-US" style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Step 2 &=
#8211; Package screen: this is not a mandatory step. You can skip it by sel=
ecting 'Build image' in Step 1. Users review and might edit the list
 of packages to be included in their image, and then proceed to build the i=
mage. The 'Build image' button is required to proceed to Step 3</span></spa=
n><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Step 3 &=
#8211; Image details screen: the image has been built, and users can select=
 from a range of possible actions<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: I see. They are 2 diff=
erent things.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Since th=
e above screens are steps in a process, they require an action (i.e. a butt=
on) to move to the next step of the process.</span></span><span lang=3D"EN-=
US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">The reci=
pes and packages dialogues are not steps in the building process: they are =
contained pieces of functionality that can be displayed on demand.
 The recipes dialogue allows users to see and edit the recipes included in =
the base image. I assume the packages dialogue allows users to include alre=
ady built packages in the base image (if this is not correct please let me =
know).&nbsp;<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Your assumption is rig=
ht.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">The acti=
ons in any dialogue should be 'Save' and 'Cancel'. Those actions were not i=
ncluded in the original design because I didn't think of them
 as dialogues: more as inspectors like the ones in Gimp. You implemented th=
em as dialogues, which I think works really well (probably better than as i=
nspectors I must say): we just need to add those 'Save' and 'Cancel' button=
s to them.&nbsp;</span></span><span lang=3D"EN-US" style=3D"font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I hope t=
his explains why we have a 'Build image' button in the Packages screen, but=
 not in the recipes and packages dialogues.&nbsp;</span></span><span lang=
=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Understand.<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F=
497D">3) After clicking &#8220;My images&#8221; to open an image, how does =
UI determine to show &#8220;Run Image&#8221; or &#8220;Write to Storage&#82=
21;, or &#8220;Deploy&#8221; or &#8220;View
 Image files&#8221;?</span></span><span lang=3D"EN-US" style=3D"font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">First of=
 all, you are right: 'Deploy' and 'Write to storage' are exactly the same t=
hing. I meant to use 'Write to storage' everywhere: sorry about
 that. My bad :(</span></span><span lang=3D"EN-US" style=3D"font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">- If the=
 building output included a live image, the Image details screen shows the =
'Write to storage' button</span></span><span lang=3D"EN-US" style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">- If the=
 image is a qemu image, the Image details screen shows the 'Run image' butt=
on. Clicking the button starts up the virtual machine</span></span><span la=
ng=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F=
497D"><o:p>&nbsp;</o:p></span></span></p>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:red=
">[Shane]: Makes sense. A technical question for expert in the mail list, h=
ow can we distinguish whether an image is a QEMU image or an
 image for real hardware, regarding the fact users can change the image nam=
e as they want?<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></span></p>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">- Otherw=
ise the Image details screen shows the 'View image files' button</span></sp=
an><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans=
-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Can you give an exampl=
e about &#8220;Otherwise&#8221;?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I hope t=
his makes sense. Otherwise let me know.</span></span><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p>=
</span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"f=
ont-size:8.5pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">4) At 6:36, how can the user go back to the =
main window at 1:39? Should the user wait until the build is
 finished or stop it by clicking &#8220;Stop build&#8221;?</span><span lang=
=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Exactly:=
 the only option at that point is to stop the build. I haven't designed wha=
t happens when you stop the build yet, but I'd say something
 similar to what happens now: a prompt asks users to confirm that they want=
 to stop the build, and if yes Hob reverts back to the screen from which th=
e user started the building image process, which can be the Image configura=
tion screen or the Packages screen.<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Understand. If any err=
or happens when building, it will stay there because I assume users want to=
 see the log. Then how can users get back to the Image configuration
 screen or the Package screen, after closing it?<o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">5) For &#8220;save template&#8221; and &#822=
0;load template&#8221;, the only chance for users to do &#8220;save templat=
e&#8221; is when the
 build is done, yes? </span><span lang=3D"EN-US" style=3D"font-size:8.5pt;c=
olor:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Well, I =
don't know. That's the way it seems to work in the latest version of Hob, b=
ut it doesn't mean it has to stay that way.</span></span><span lang=3D"EN-U=
S" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></=
o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">However, we think users can save any setting=
s for build environments, and any selection of packages or recipes
 in an image even though the build doesn&#8217;t start. Then next time he/s=
he can resume the job by starting with the stuffs saved.
</span><span lang=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:=
p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I totall=
y agree with you that users should be able to save a template before buildi=
ng the image.&nbsp;</span></span><span lang=3D"EN-US" style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">Again, we are considering whether it is good=
 to put &#8220;load template&#8221; and &#8220;save template&#8221; togethe=
r, because
 they are similar actions.</span><span lang=3D"EN-US" style=3D"font-size:8.=
5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I don't =
think I would do it that way. 'Load template' is a way to initiate the buil=
ding process, and therefore something you might want to do at
 any time. As such, it makes sense to make it an option in the toolbar, lik=
e 'opening an image', where is always available.</span></span><span lang=3D=
"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">'Save te=
mplate' is something that sequentially comes after configuring the image pa=
rameters. It's like a function that takes as parameters a machine
 and a base image (with its recipes or packages). Therefore the action of s=
aving a template only makes sense when a machine and base image have been s=
elected. If you represent it as a button in the toolbar, you will have to s=
how it in an inactive state until
 a machine and base image have been selected. Otherwise,&nbsp;what are you =
saving as a template?&nbsp;As such, it makes sense to display it after thos=
e parameters have been set, i.e., after the 'View recipes' and 'View packag=
es' buttons.&nbsp;</span></span><span lang=3D"EN-US" style=3D"font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">If you a=
gree with the above, I can review the Image configuration screen and add a =
'Save as template' action to it.</span></span><span lang=3D"EN-US" style=3D=
"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: OK, I agree to enable =
the button &#8220;Save as template&#8221; after all parameters in the Image=
 configuration screen have been set. Keep this open, please.<o:p></o:p></sp=
an></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:#1F497D">6) At 7:07, &#8220;view files&#8221; is the same as &#8220;My i=
mages&#8221;?</span></span><span lang=3D"EN-US" style=3D"font-size:8.5pt;co=
lor:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I don't =
think so. 'My images' would open a File Chooser Dialog</span></span><span l=
ang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;"><o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:#1F497D"><a href=3D"http://developer.gnome.org/gtk3/stable/GtkFileChoose=
rDialog.html">http://developer.gnome.org/gtk3/stable/GtkFileChooserDialog.h=
tml</a></span></span><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Selectin=
g an image file from the file chooser dialog would open the Hob &quot;Image=
 details' screen for the selected image file.</span></span><span lang=3D"EN=
-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">&quot;Vi=
ew files&quot; would open a regular file manager window in the tmp/deploy/i=
mages directory. Selecting the image file from this file manager window
 would simply open the image in the default application assigned to the fil=
e extension (it would not open the image details screen in Hob). &quot;View=
 files&quot; is just a quick way to navigate to the tmp/deploy/images direc=
tory.<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: OK, I see.<o:p></o:p><=
/span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">7) We are thinking &#8220;My images&#8221; i=
s similar as &#8220;Load template&#8221;, because the image contains the in=
fo of settings
 etc. so does the template. The only diff is after opening an image, we can=
 deploy it or run it. But for template, it is sort of &#8220;virtual&#8221;=
 stuff, we have to build according to the definitions of the template. So, =
to some extent, &#8220;My images&#8221; =3D &#8220;Template&#8221; &#43; ab=
le
 to deploy and run, what do you think?</span><span lang=3D"EN-US" style=3D"=
font-size:8.5pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:black">I agree, but I also think that the ability to deploy and run that=
 comes with images and is missing from templates
 is a significant difference. It means that the logical next steps after op=
ening a template and opening an image are very different too.
</span></span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span>=
</p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">After op=
ening a template the logical next steps are: edit the parameters if you wis=
h, then build. That's why loading a template brings you to the
 Image configuration screen, where you can edit parameters and build.&nbsp;=
</span></span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;=
,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">After op=
ening an image the logical next steps are deploy / run. That's why opening =
an image brings you to the Image details screen, where you can
 deploy / run.<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: But on the Image detai=
ls screen, you can click &#8220;Edit Configuration&#8221; to go to the Imag=
e configuration screen. Then the rest is totally the same as the above.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">A technical question comes to m=
e, it is also for experts. Is there a way to modify bitbake to write some m=
ore information into the target image, and for Hob to unpack
 and fetch the information later?<o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">For this part, we also consider the client/s=
erver mode with XMLRPC: We have the capability to run bitbake
 server on the server side, but UI on the client side. So the image in &#82=
20;My images&#8221; always is generated on the server side, and the templat=
e in &#8220;Load template&#8221; is a config file on the client side.</span=
><span lang=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:black">It sort of makes sense to me that templates are local files, whil=
e images are kept on a server where they can
 be shared, but I definitely don't know enough to have an opinion. You guys=
 are the experts on this! :)
</span></span><span lang=3D"EN-US" style=3D"color:black"><o:p></o:p></span>=
</p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I guess =
that if no client / server mode is set up and I am running everything local=
ly, then images will also be kept locally. Is that the case?<o:p></o:p></sp=
an></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Yes, that is. Temporar=
ily we can skip the case running on client and server. We assume all are on=
 the client.<o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">8) We already saw some buttons &#8220;Settin=
gs&#8221;, &#8220;Deploy image&#8221;, &#8220;Run image&#8221;, &#8220;Load=
 Template&#8221; and &#8220;Save Template&#8221;,
 &#8220;Build New image&#8221;, &#8220;Edit Configuration&#8221; or &#8220;=
Edit packages&#8221;, &#8220;View image files&#8221; on different windows. =
So probably that makes switching between windows a bit complex. For instanc=
e, At 8:24, clicking &#8220;Edit packages&#8221; will go back to the packag=
e view. But what
 if users just make a mistake on the UI and want to go back to the window a=
t 8:24?</span><span lang=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o=
:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Well, th=
ey can't :) The Packages screen is an intermediate step that allows you to =
view and edit the packages to be included in your image: nothing
 else. If you land there by mistake, you can still get out via the 'Back to=
 image configuration' option. From there, you can go back to the Image conf=
iguration screen by opening the image you built.</span></span><span lang=3D=
"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">We could=
 change the &quot;Build image&quot; button into a go forward button, and if=
 the user makes any changes to the packages display again the 'Build image'
 button, but I am not sure if it would be worth the development effort.&nbs=
p;</span></span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quo=
t;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Providin=
g access to all previous screens could be done by some kind of breadcrumb (=
a representation of each step in the process you can click on
 to access the step), but breadcrumbs are problematic when the number of st=
eps in a process can change, like in Hob. Remember than you can decide to g=
o through the packages step, or skip it and&nbsp;build the image directly.&=
nbsp;<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Personally, I don&#821=
7;t like to change &#8220;Build image&#8221; to a &#8220;Go forward&#8221; =
button, because it would be possible that users want to rebuild the image w=
ithout any change.<o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">With many buttons on many windows, we have a=
 lot of combinations, then we have a lot of states for the UI.</span><span =
lang=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">True: th=
ere are a few things you can do in the Image details screen. You can save y=
our image as a template, you can edit the image, you can view
 the image files, &nbsp;you can deploy or run the image when applicable, an=
d you can build a new image. You can also open a Template or a different im=
age. All those are reasonable next steps once you have reached the end of b=
uilding process, and all of them should
 be present in the interface.&nbsp;</span></span><span lang=3D"EN-US" style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:#1F497D">And we are thinking &#8220;Settings&#8221;, &#8220;Deploy image=
&#8221;, &#8220;Run image&#8221;, &#8220;Load Template&#8221; and &#8220;Sa=
ve Template&#8221; are important
 for us, and whether we can use menus or buttons on a toolbar. We prefer th=
e latter, and prefer we have a main window and others are all dialogs inher=
ited from the main window. What do you think on this?</span></span><span la=
ng=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I can se=
e your point here. I did consider that structure after I saw it working. It=
's quite nice. However, I can see a couple of problems with
 it:</span></span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&q=
uot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<ol start=3D"1" type=3D"1">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l4 level1 lfo2">
<span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;">It brings the concept of progre=
ssive disclosure (new options displaying as a result of user selections) th=
at we use in the Image configuration screen to a breaking
 point. There are too many things happening in that main window. When you s=
tart building, the progress bar has to display at the bottom of the screen,=
 which looks awkward, and there is not enough space to provide clear next s=
teps after the packages and image
 have been built.&nbsp;</span></span><span lang=3D"EN-US" style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></li><li =
class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto;mso-list:l4 level1 lfo2">
<span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;">Having 'Deploy image' and 'Run =
image' buttons in the toolbar will cause problems. They fire actions that r=
equire a parameter (an image to deploy or run). They could
 get this parameter by taking the last image that has been built, and deplo=
y or run that image. But what if no image has been built yet? What if the l=
ast image was built a few days ago and it's not at all the image you want t=
o deploy or run? The alternative
 would be asking the user what's the image she wants to deploy or run. You =
would open a file chooser dialog for that. But imagine the following situat=
ion: I've just finished building a qemu image. The &quot;congratulations&qu=
ot; message and the path to my image are displayed
 at the bottom of the main screen. I want to run my image, so I click on th=
e 'run image' button in the toolbar, expecting it of course to run the qemu=
 image I've just built. Instead, it pops up a file chooser dialog and I hav=
e to select the image I just built
 to run it! Such a system would feel a bit dumb: why is it asking me which =
image do I want to run? Isn't it obvious I want to run the qemu image I've =
just built? To avoid this type of 'dumb' reactions by the UI, actions shoul=
d be displayed where and when applicable.
 Actions in toolbars and menus are always present, which means they are alw=
ays applicable, they make sense at all times, independently of the system s=
tate: I call them global actions. Opening a template, opening an image or a=
ccessing settings are kind of global
 actions. Running or deploying an image are 'contextual' actions, they only=
 make sense when the system is in a certain state: for example, right after=
 building a qemu image. If you position global actions in toolbars or menus=
, you will have to make extensive
 use of inactive states, which means displaying things that don&#8217;t mak=
e sense in such a way that you cannot use them (which is just noise), or ma=
ke them behave in different ways depending on the system state (which is co=
nfusing).<span style=3D"color:#1F497D">&nbsp;</span></span></span><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></li></ol>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">9) a small question as Dave has, what is the=
 diff between &#8220;deploy image&#8221;and &#8220;write to storage&#8221;?=
 We think
 they are the same.</span><span lang=3D"EN-US" style=3D"font-size:8.5pt;col=
or:black"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">Dave is =
completely right: 'Deploy' and 'Write to storage' are exactly the same thin=
g. I meant to use 'Write to storage' everywhere: sorry about
 that. My bad :(</span></span><span lang=3D"EN-US" style=3D"font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: Three more we want to =
consider:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">1. we want to add proxy setting=
 into &#8220;Settings&#8221; to support proxy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">2. When users fail to build ima=
ges, there is no option or button to clean all (like sstate) but bitbake co=
mmand has (bitbake &#8211;c cleanall). We hope to add it into the
 GUI.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">3. can the button &#8220;Settin=
gs&#8221; be there only on the Image configuration screen? It doesn&#8217;t=
 make any sense to set the parameters on the Image details screen, agree?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">&nbsp;&nbsp;&nbsp; Ditto for &#=
8220;Load Template&#8221; on the Image details screen. We also can initiate=
 a new build by &#8220;Build new image&#8221; and &#8220;Load Template&#822=
1;, thoughts?<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">Sorry, many feedbacks;-) And we are also thi=
nking to simplify the rest of the design and finalize asap so
 we can finish the implementation before the end of M3. (the end of Feb).</=
span><span lang=3D"EN-US" style=3D"font-size:8.5pt;color:black"><o:p></o:p>=
</span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span class=3D"apple-style-span"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">I totall=
y understand you might not have time to implement the design I've sent. If =
this is the problem, please do let me know, and let's talk about
 what's feasible. Maybe we could keep the current structure (all steps in t=
he main screen), but look for some alternative options to position the 'Dep=
loy image', 'Run image' and 'Save as template' actions &#8230; not in the t=
oolbar or menus, please! ;)<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:red">[Shane]: We will try our best.<=
o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"apple-style-span"><span lang=3D"EN-US" style=3D"col=
or:#1F497D">Another FYI, we get your feedbacks in the two pdf files you sen=
t previously and are revising the UI.</span></span><span lang=3D"EN-US" sty=
le=3D"font-size:8.5pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"f=
ont-size:8.5pt;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1F497D">Thanks.</span><span lang=3D"EN-US" style=3D"=
font-size:8.5pt;color:#1F497D"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255SHSMSX102ccrcor_--
