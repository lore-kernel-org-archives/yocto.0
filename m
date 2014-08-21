Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC9FE00807; Thu, 21 Aug 2014 03:21:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D532FE004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 03:21:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7LAL16V001614
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 03:21:01 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Thu, 21 Aug 2014 03:21:01 -0700
Message-ID: <53F5C828.4090509@windriver.com>
Date: Thu, 21 Aug 2014 18:21:28 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com>
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com>
X-Originating-IP: [128.224.162.187]
Subject: Re: Setting Default User Accounts
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
X-List-Received-Date: Thu, 21 Aug 2014 10:21:10 -0000
Content-Type: multipart/alternative;
	boundary="------------050700040008010703050000"

--------------050700040008010703050000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

How about add in local.conf:

INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "usermod -L root; \
                       useradd -P 'test' test;"

//Chen Qi

On 08/21/2014 03:13 AM, Crast, Nicholas wrote:
>
> All,
>
> I am currently in the middle of a battle with yocto, trying to 
> accomplish the following:
>
> 1.)Disable root user account
>
> 2.)Create default user account with default password
>
> I currently have the following a recipe:
>
> USERADD_PACKAGES = "${PN}"
>
> USERADD_PARAM_${PN} = "-d /home/nick -r -s /bin/bash nick "
>
> In order to try to add a user account. I have this in my image recipe:
>
> ROOTFS_POSTPROCESS_COMMAND += "set_nick_passwd;"
>
> set_nick_passwd() {
>
>    sed 's%^ nick:[^:]*:% nick:adySxRKMiPvjA:%' \
>
>        < ${IMAGE_ROOTFS}/etc/shadow \
>
>        > ${IMAGE_ROOTFS}/etc/shadow.new;
>
>    mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
>
> }
>
> This is to edit the /etc/shadow file and insert a new (hashed) 
> password. What I’m looking for is a cleaner way to do this. When I run 
> bitbake I get a lot of warnings because the “nick” account is already 
> an account on my build machine. This seems like a fairly common use 
> case, and I think I am likely going about it wrong.
>
> Does anybody have any advice?
>
> -Nick
>
> ----------------------------------------
>
> Nick Crast
>
> Associate Software Engineer
>
> Saab Sensis Corporation
>
> Phone: 315-445-5703
>
> Email: Nicholas.Crast@saabsensis.com 
> <mailto:Nicholas.Crast@saabsensis.com>
>
>
> /This message is intended only for the addressee and may contain 
> information that is company confidential or privileged. Any technical 
> data in this message may be exported only in accordance with the U.S. 
> International Traffic in Arms Regulations (22 CFR Parts 120-130) or 
> the Export Administration Regulations (15 CFR Parts 730-774). 
> Unauthorized use is strictly prohibited and may be unlawful. If you 
> are not the intended recipient, or the person responsible for 
> delivering to the intended recipient, you should not read, copy, 
> disclose or otherwise use this message. If you have received this 
> email in error, please delete it, and advise the sender immediately. /
>
>


--------------050700040008010703050000
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">How about add in local.conf:<br>
      <br>
      INHERIT += "extrausers"<br>
      EXTRA_USERS_PARAMS = "usermod -L root; \    <br>
                            useradd -P 'test' test;"<br>
      <br>
      //Chen Qi<br>
      <br>
      On 08/21/2014 03:13 AM, Crast, Nicholas wrote:<br>
    </div>
    <blockquote
cite="mid:36A43B0E1E88D84791516F9D44BC48331B3C8D01@corpmail01.corp.sensis.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:54161382;
	mso-list-type:hybrid;
	mso-list-template-ids:513576564 908131380 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\.\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am currently in the middle of a battle
          with yocto, trying to accomplish the following:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">1.)<span style="font:7.0pt
              &quot;Times New Roman&quot;">   
            </span></span><!--[endif]-->Disable root user account<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">2.)<span style="font:7.0pt
              &quot;Times New Roman&quot;">   
            </span></span><!--[endif]-->Create default user account with
          default password<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I currently have the following a recipe:<o:p></o:p></p>
        <p class="MsoNormal">USERADD_PACKAGES = "${PN}"<o:p></o:p></p>
        <p class="MsoNormal">USERADD_PARAM_${PN} = "-d /home/nick -r -s
          /bin/bash nick "<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">In order to try to add a user account. I
          have this in my image recipe:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ROOTFS_POSTPROCESS_COMMAND +=
          "set_nick_passwd;"<o:p></o:p></p>
        <p class="MsoNormal">set_nick_passwd() {<o:p></o:p></p>
        <p class="MsoNormal">   sed 's%^ nick:[^:]*:%
          nick:adySxRKMiPvjA:%' \<o:p></o:p></p>
        <p class="MsoNormal">       &lt; ${IMAGE_ROOTFS}/etc/shadow \<o:p></o:p></p>
        <p class="MsoNormal">       &gt; ${IMAGE_ROOTFS}/etc/shadow.new;<o:p></o:p></p>
        <p class="MsoNormal">   mv ${IMAGE_ROOTFS}/etc/shadow.new
          ${IMAGE_ROOTFS}/etc/shadow ;<o:p></o:p></p>
        <p class="MsoNormal">}<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">This is to edit the /etc/shadow file and
          insert a new (hashed) password. What I’m looking for is a
          cleaner way to do this. When I run bitbake I get a lot of
          warnings because the “nick” account is already an account on
          my build machine. This seems like a fairly common use case,
          and I think I am likely going about it wrong.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Does anybody have any advice?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">-Nick<o:p></o:p></p>
        <p class="MsoNormal">----------------------------------------<o:p></o:p></p>
        <p class="MsoNormal">Nick Crast<o:p></o:p></p>
        <p class="MsoNormal">Associate Software Engineer<o:p></o:p></p>
        <p class="MsoNormal">Saab Sensis Corporation<o:p></o:p></p>
        <p class="MsoNormal">Phone: 315-445-5703<o:p></o:p></p>
        <p class="MsoNormal">Email: <a moz-do-not-send="true"
            href="mailto:Nicholas.Crast@saabsensis.com">Nicholas.Crast@saabsensis.com</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <i><small>This message is intended only for the addressee and may
          contain information that is company confidential or
          privileged. Any technical data in this message may be exported
          only in accordance with the U.S. International Traffic in Arms
          Regulations (22 CFR Parts 120-130) or the Export
          Administration Regulations (15 CFR Parts 730-774).
          Unauthorized use is strictly prohibited and may be unlawful.
          If you are not the intended recipient, or the person
          responsible for delivering to the intended recipient, you
          should not read, copy, disclose or otherwise use this message.
          If you have received this email in error, please delete it,
          and advise the sender immediately.
        </small></i>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------050700040008010703050000--
