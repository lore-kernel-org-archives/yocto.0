Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C42D1E00B2F; Tue, 20 Jun 2017 14:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D90AAE00B01
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 14:04:56 -0700 (PDT)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.20/8.16.0.20) with SMTP id v5KL19PH011953
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 14:04:56 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2b52h2e8r4-1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 14:04:56 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: AC33F033:6C57D957-88258145:007322E1;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFAC33F033.6C57D957-ON88258145.007322E1-88258145.0073CEEA@selinc.com>
From: Aaron_Wright@selinc.com
Date: Tue, 20 Jun 2017 14:04:56 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 06/20/2017 02:04:56 PM,
	Serialize complete at 06/20/2017 02:04:56 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8566
	signatures=668485
Subject: Yocto eSDK, Editing/Adding Recipes, and VCS
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
X-List-Received-Date: Tue, 20 Jun 2017 21:04:58 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0073CEEA88258145_="

--=_alternative 0073CEEA88258145_=
Content-Type: text/plain; charset="US-ASCII"

I've been trying to document some workflows for my developers using the 
Yocto eSDK for our image, but I am coming up empty when it comes to 
editing or adding recipes. I can use devtool to edit a recipe like so:

devtool edit-recipe -a my-recipe

But any changes I make are hidden away in the 
esdk/layers/poky/meta-mylayer directory, which isn't managed by a VCS (git 
in this instance). So there's this modified file in a directory--great. 
What is the developer supposed to do with it? Copy it over to a VCS 
managed directory of meta-mylayer, commit, and push?

I feel like I'm missing something with the devtool workflow. Can anyone 
point me in the right direction?
 

--=_alternative 0073CEEA88258145_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I've been trying to document some workflows
for my developers using the Yocto eSDK for our image, but I am coming up
empty when it comes to editing or adding recipes. I can use devtool to
edit a recipe like so:</font>
<br>
<br><font size=2 face="sans-serif">devtool edit-recipe -a my-recipe</font>
<br>
<br><font size=2 face="sans-serif">But any changes I make are hidden away
in the esdk/layers/poky/meta-mylayer directory, which isn't managed by
a VCS (git in this instance). So there's this modified file in a directory--great.
What is the developer supposed to do with it? Copy it over to a VCS managed
directory of meta-mylayer, commit, and push?</font>
<br>
<br><font size=2 face="sans-serif">I feel like I'm missing something with
the devtool workflow. Can anyone point me in the right direction?</font>
<br><font size=2 face="sans-serif">&nbsp;</font>

--=_alternative 0073CEEA88258145_=--
