Return-Path: <Valentin.Cobelea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4B80BE00CE1
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 00:03:04 -0700 (PDT)
Received: from localhost.enea.se (192.168.14.171) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Fri, 11 Apr 2014 09:02:58 +0200
Message-ID: <534793A2.2000603@enea.com>
Date: Fri, 11 Apr 2014 10:02:58 +0300
From: Vali Cobelea <valentin.cobelea@enea.com>
Organization: ENEA
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <534416F0.10109@enea.com>	<9507315.eLP4En45Q5@peggleto-mobl5.ger.corp.intel.com>	<53452733.2070806@enea.com>	<33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>	<53452985.7020202@enea.com>
	<CAMCfZKG4BdGfkwa-uhoLUe8m7PKc_NUC=ciDi2GXCsCqDmmi+Q@mail.gmail.com>
In-Reply-To: <CAMCfZKG4BdGfkwa-uhoLUe8m7PKc_NUC=ciDi2GXCsCqDmmi+Q@mail.gmail.com>
X-Originating-IP: [192.168.14.171]
Cc: yocto@yoctoproject.org, Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Fri, 11 Apr 2014 07:03:07 -0000
Content-Type: multipart/alternative;
	boundary="------------040708040705000806020904"

--------------040708040705000806020904
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Diego,

Thank you for your interest in the meta-cgl layer.
Please be aware that the layer is in its alpha state, as I said an 
initiative that started with a layer.

The branch is 'master', no custom things yet.
Below you can find the instructions to clone all of the "dependency layers":

git clonegit://git.yoctoproject.org/meta-qt3 
<http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-qt3?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
git clonegit://git.yoctoproject.org/meta-virtualization 
<http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-virtualization?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
git clonegit://git.yoctoproject.org/meta-selinux 
<http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-selinux?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
git clonegit://git.yoctoproject.org/meta-cloud-services 
<http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-cloud-services?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
git clonegit://git.yoctoproject.org/meta-security 
<http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-security?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
git clonehttps://github.com/joaohf/meta-openclovis.git

Also, since there are duplicated recipes in these layers, please add the 
following BBMASK in cong/local.conf  (big thank you to Alex Vaduva for 
this):

BBMASK = 
"meta-cloud-services/meta-openstack/recipes-support/lvm2|meta-security/recipes-security/libcap-ng"


Let me know how the test goes Deigo.


Best regards,
Vali

On 04/11/2014 12:35 AM, Diego Sueiro wrote:
>
> Vali,
>
> I'm excited to see CGL support for Yocto.
> I'm going to test this layer as soon as possible.
>
> One question, which branch of Yocto is it based on?
>
> Regards,
>
> --
> *dS
> Diego Sueiro
> sent from mobile.
>
> On Apr 9, 2014 11:05 AM, "Vali Cobelea" <valentin.cobelea@enea.com 
> <mailto:valentin.cobelea@enea.com>> wrote:
>
>     OK Paul, that indeed makes sense, I really did not knew that
>     preliminary versions of layers are accepted.
>     I will discuss around here and if everything goes OK we will start
>     the move in the "public" layer index.
>     I also do agree with an all-together strategy, no matter for the
>     layer state.
>
>
>     Much appreciated,
>     Vali
>
>
>     On 04/09/2014 02:01 PM, Paul Eggleton wrote:
>
>         On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:
>
>             On 04/09/2014 01:51 PM, Paul Eggleton wrote:
>
>                 On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:
>
>                     Here at ENEA we decided to take the initiative
>                     regarding the CGL
>                     compliance when it comes to the Yocto Project.
>                     For this we started the work on a dedicated layer
>                     called 'meta-cgl'
>
>                     which can be accessed / cloned from here:
>                     http://git.enea.com/git/?p=linux/meta-cgl.git
>                         git clone git@git.enea.com:linux/meta-cgl
>
>                     Have a look of the things we got there so far,
>                     please remember that
>                     there is still plenty of work to be done (layer
>                     architecture, CGL
>                     requirements coverage mode and so on).
>                     It is a little bit more than a stub layer,
>                     consider it a starting point
>                     for the direction we would like to have with this
>                     layer.
>
>                     Any input is much appreciated, lets keep the
>                     discussion by this email
>                     thread and see where it goes.
>
>                 I don't have anything to offer on the layer contents,
>                 but I would say in
>                 order to make it easy for people to find this layer I
>                 would strongly
>                 encourage you to>
>                 submit it to the OpenEmbedded layer index:
>                 http://layers.openembedded.org/layerindex/submit/
>
>             Thank you for the input.
>             We will keep the layer for a short period of time at the
>             current
>             location while getting other ideas regarding the content /
>             architecture.
>             The layer initiative will also be raised up in the board
>             advisory
>             meeting, in order to get even more input.
>             After which we will make it easier to find, access and use
>             for anyone,
>             exactly as you suggested.
>
>         OK, as the maintainer it's totally up to you.
>
>         I would say though generally that I'd like to see more people
>         adding their
>         work-in-progress layers to the layer index, even if at some
>         time later they
>         will be moved elsewhere or absorbed into another layer - it
>         just makes it
>         easier to point people to the layer index so they can find
>         recipes that have
>         already been written, rather than having to re-write them from
>         scratch.
>
>         Cheers,
>         Paul
>
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>


--------------040708040705000806020904
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi Diego,<br>
      <br>
      Thank you for your interest in the meta-cgl layer.<br>
      Please be aware that the layer is in its alpha state, as I said an
      initiative that started with a layer.<br>
      <br>
      The branch is 'master', no custom things yet.<br>
      Below you can find the instructions to clone all of the
      "dependency layers":<br>
      <br>
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><span
        class="twikiNewLink" style="color: rgb(0, 0, 0); font-family:
        arial, verdana, sans-serif; font-size: 14px; font-style: normal;
        font-variant: normal; font-weight: normal; letter-spacing:
        normal; line-height: 20.474998474121094px; orphans: auto;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255);"><a
href="http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-qt3?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0"
          rel="nofollow" title="git://git.yoctoproject.org/meta-qt3
          (this topic does not yet exist; you can create it)"
          style="text-decoration: none; color: rgb(183, 53, 30);
          background-color: transparent; border-color: rgb(183, 53, 30);
          border-style: none none dotted; border-width: 1px;">git://git.yoctoproject.org/meta-qt3</a></span><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space">&nbsp;</span></span><br style="color:
        rgb(0, 0, 0); font-family: arial, verdana, sans-serif;
        font-size: 14px; font-style: normal; font-variant: normal;
        font-weight: normal; letter-spacing: normal; line-height:
        20.474998474121094px; orphans: auto; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><span
        class="twikiNewLink" style="color: rgb(0, 0, 0); font-family:
        arial, verdana, sans-serif; font-size: 14px; font-style: normal;
        font-variant: normal; font-weight: normal; letter-spacing:
        normal; line-height: 20.474998474121094px; orphans: auto;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255);"><a
href="http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-virtualization?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0"
          rel="nofollow"
          title="git://git.yoctoproject.org/meta-virtualization (this
          topic does not yet exist; you can create it)"
          style="text-decoration: none; color: rgb(183, 53, 30);
          background-color: transparent; border-color: rgb(183, 53, 30);
          border-style: none none dotted; border-width: 1px;">git://git.yoctoproject.org/meta-virtualization</a></span><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space">&nbsp;</span></span><br style="color:
        rgb(0, 0, 0); font-family: arial, verdana, sans-serif;
        font-size: 14px; font-style: normal; font-variant: normal;
        font-weight: normal; letter-spacing: normal; line-height:
        20.474998474121094px; orphans: auto; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><span
        class="twikiNewLink" style="color: rgb(0, 0, 0); font-family:
        arial, verdana, sans-serif; font-size: 14px; font-style: normal;
        font-variant: normal; font-weight: normal; letter-spacing:
        normal; line-height: 20.474998474121094px; orphans: auto;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255);"><a
href="http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-selinux?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0"
          rel="nofollow" title="git://git.yoctoproject.org/meta-selinux
          (this topic does not yet exist; you can create it)"
          style="text-decoration: none; color: rgb(183, 53, 30);
          background-color: transparent; border-color: rgb(183, 53, 30);
          border-style: none none dotted; border-width: 1px;">git://git.yoctoproject.org/meta-selinux</a></span><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space">&nbsp;</span></span><br style="color:
        rgb(0, 0, 0); font-family: arial, verdana, sans-serif;
        font-size: 14px; font-style: normal; font-variant: normal;
        font-weight: normal; letter-spacing: normal; line-height:
        20.474998474121094px; orphans: auto; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><span
        class="twikiNewLink" style="color: rgb(0, 0, 0); font-family:
        arial, verdana, sans-serif; font-size: 14px; font-style: normal;
        font-variant: normal; font-weight: normal; letter-spacing:
        normal; line-height: 20.474998474121094px; orphans: auto;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255);"><a
href="http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-cloud-services?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0"
          rel="nofollow"
          title="git://git.yoctoproject.org/meta-cloud-services (this
          topic does not yet exist; you can create it)"
          style="text-decoration: none; color: rgb(183, 53, 30);
          background-color: transparent; border-color: rgb(183, 53, 30);
          border-style: none none dotted; border-width: 1px;">git://git.yoctoproject.org/meta-cloud-services</a></span><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space">&nbsp;</span></span><br style="color:
        rgb(0, 0, 0); font-family: arial, verdana, sans-serif;
        font-size: 14px; font-style: normal; font-variant: normal;
        font-weight: normal; letter-spacing: normal; line-height:
        20.474998474121094px; orphans: auto; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><span
        class="twikiNewLink" style="color: rgb(0, 0, 0); font-family:
        arial, verdana, sans-serif; font-size: 14px; font-style: normal;
        font-variant: normal; font-weight: normal; letter-spacing:
        normal; line-height: 20.474998474121094px; orphans: auto;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255);"><a
href="http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-security?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0"
          rel="nofollow" title="git://git.yoctoproject.org/meta-security
          (this topic does not yet exist; you can create it)"
          style="text-decoration: none; color: rgb(183, 53, 30);
          background-color: transparent; border-color: rgb(183, 53, 30);
          border-style: none none dotted; border-width: 1px;">git://git.yoctoproject.org/meta-security</a></span><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space">&nbsp;</span></span><br style="color:
        rgb(0, 0, 0); font-family: arial, verdana, sans-serif;
        font-size: 14px; font-style: normal; font-variant: normal;
        font-weight: normal; letter-spacing: normal; line-height:
        20.474998474121094px; orphans: auto; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255);">
      <span style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">git clone<span
          class="Apple-converted-space">&nbsp;</span></span><a
        href="https://github.com/joaohf/meta-openclovis.git"
        target="_top" style="text-decoration: none; color: rgb(88, 67,
        139); background-color: rgb(255, 255, 255); border-color:
        rgb(88, 67, 139); border-style: none none dotted; border-width:
        1px; font-family: arial, verdana, sans-serif; font-size: 14px;
        font-style: normal; font-variant: normal; font-weight: normal;
        letter-spacing: normal; line-height: 20.474998474121094px;
        orphans: auto; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: auto;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;">https://github.com/joaohf/meta-openclovis.git</a><span
        style="color: rgb(0, 0, 0); font-family: arial, verdana,
        sans-serif; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 20.474998474121094px; orphans: auto; text-align:
        left; text-indent: 0px; text-transform: none; white-space:
        normal; widows: auto; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;"><span
          class="Apple-converted-space"> </span></span><br>
      <br>
      Also, since there are duplicated recipes in these layers, please
      add the following BBMASK in cong/local.conf&nbsp; (big thank you to
      Alex Vaduva for this):<br>
      <br>
      BBMASK =
"meta-cloud-services/meta-openstack/recipes-support/lvm2|meta-security/recipes-security/libcap-ng"<br>
      <br>
      <br>
      Let me know how the test goes Deigo.<br>
      <br>
      <br>
      Best regards,<br>
      Vali<br>
      <br>
      On 04/11/2014 12:35 AM, Diego Sueiro wrote:<br>
    </div>
    <blockquote
cite="mid:CAMCfZKG4BdGfkwa-uhoLUe8m7PKc_NUC=ciDi2GXCsCqDmmi+Q@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <p dir="ltr">Vali, </p>
      <p dir="ltr">I'm excited to see CGL support for Yocto. <br>
        I'm going to test this layer as soon as possible. </p>
      <p dir="ltr">One question, which branch of Yocto is it based on? </p>
      <p dir="ltr">Regards, </p>
      <p dir="ltr">--<br>
        *dS<br>
        Diego Sueiro<br>
        sent from mobile. </p>
      <div class="gmail_quote">On Apr 9, 2014 11:05 AM, "Vali Cobelea"
        &lt;<a moz-do-not-send="true"
          href="mailto:valentin.cobelea@enea.com">valentin.cobelea@enea.com</a>&gt;
        wrote:<br type="attribution">
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          OK Paul, that indeed makes sense, I really did not knew that
          preliminary versions of layers are accepted.<br>
          I will discuss around here and if everything goes OK we will
          start the move in the "public" layer index.<br>
          I also do agree with an all-together strategy, no matter for
          the layer state.<br>
          <br>
          <br>
          Much appreciated,<br>
          Vali<br>
          <br>
          <br>
          On 04/09/2014 02:01 PM, Paul Eggleton wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              On 04/09/2014 01:51 PM, Paul Eggleton wrote:<br>
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">
                On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:<br>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">
                  Here at ENEA we decided to take the initiative
                  regarding the CGL<br>
                  compliance when it comes to the Yocto Project.<br>
                  For this we started the work on a dedicated layer
                  called 'meta-cgl'<br>
                  <br>
                  which can be accessed / cloned from here:<br>
                  &nbsp; &nbsp; <a moz-do-not-send="true"
                    href="http://git.enea.com/git/?p=linux/meta-cgl.git"
                    target="_blank">http://git.enea.com/git/?p=linux/meta-cgl.git</a><br>
                  &nbsp; &nbsp; git clone <a class="moz-txt-link-abbreviated" href="mailto:git@git.enea.com:linux/meta-cgl">git@git.enea.com:linux/meta-cgl</a><br>
                  <br>
                  Have a look of the things we got there so far, please
                  remember that<br>
                  there is still plenty of work to be done (layer
                  architecture, CGL<br>
                  requirements coverage mode and so on).<br>
                  It is a little bit more than a stub layer, consider it
                  a starting point<br>
                  for the direction we would like to have with this
                  layer.<br>
                  <br>
                  Any input is much appreciated, lets keep the
                  discussion by this email<br>
                  thread and see where it goes.<br>
                </blockquote>
                I don't have anything to offer on the layer contents,
                but I would say in<br>
                order to make it easy for people to find this layer I
                would strongly<br>
                encourage you to&gt;<br>
                submit it to the OpenEmbedded layer index:<br>
                &nbsp; &nbsp; <a moz-do-not-send="true"
                  href="http://layers.openembedded.org/layerindex/submit/"
                  target="_blank">http://layers.openembedded.org/layerindex/submit/</a><br>
              </blockquote>
              Thank you for the input.<br>
              We will keep the layer for a short period of time at the
              current<br>
              location while getting other ideas regarding the content /
              architecture.<br>
              The layer initiative will also be raised up in the board
              advisory<br>
              meeting, in order to get even more input.<br>
              After which we will make it easier to find, access and use
              for anyone,<br>
              exactly as you suggested.<br>
            </blockquote>
            OK, as the maintainer it's totally up to you.<br>
            <br>
            I would say though generally that I'd like to see more
            people adding their<br>
            work-in-progress layers to the layer index, even if at some
            time later they<br>
            will be moved elsewhere or absorbed into another layer - it
            just makes it<br>
            easier to point people to the layer index so they can find
            recipes that have<br>
            already been written, rather than having to re-write them
            from scratch.<br>
            <br>
            Cheers,<br>
            Paul<br>
            <br>
          </blockquote>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a moz-do-not-send="true" href="mailto:yocto@yoctoproject.org"
            target="_blank">yocto@yoctoproject.org</a><br>
          <a moz-do-not-send="true"
            href="https://lists.yoctoproject.org/listinfo/yocto"
            target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040708040705000806020904--
