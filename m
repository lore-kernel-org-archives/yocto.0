Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EAFBE00D42; Mon,  1 Jul 2019 04:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [188.165.33.109 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 10796 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Jul 2019 04:18:42 PDT
Received: from 10.mo4.mail-out.ovh.net (10.mo4.mail-out.ovh.net
	[188.165.33.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6867E00A49
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 04:18:42 -0700 (PDT)
Received: from player738.ha.ovh.net (unknown [10.109.160.5])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 5D8071F7D61
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 09:42:44 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player738.ha.ovh.net (Postfix) with ESMTPSA id E1C2B788A2E7
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 07:42:43 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	mQINBFy+vRwBEACs+tNUJ4aKRaJm4BDZxCRBTMRS/ng8XT9yEkH6xnaOroLtYM7Uwb2QqvtN
	uBR6Q6adYF/IcnzOuJeIlVEHloU+GyihHq1U4kJH6qI4FnnjjDhC3g7Tpms+R+yLGI1/lQ4x
	4wA7m1Mm1oNBF7ry+p640/1rj3xxa6UEv387/coVWNP6scxhcff+rYPCkquViKob96VF/XeY
	vav+DrBK96v9VyR3EK2DQjmw2FY/0Q95bOZ/CcfbmhIe4rCcRuZECR5zyvPVdTLtgfVJIteG
	bhHXDLXaKVXtshdUrAPiqY6Cd0alRjEnXi9QNoyx/Vcl8ChpYTLHYqZSfsjpJhnpXSfgS6YH
	iOhViUP5IB0kDvnDl/8fbUiBeUgXZqY4+j3NsL6FkbNch+7zMShj1cZwr0u5dO2MzcmLuYJm
	JwMM1dE9hwRTfPPQfagGfiAcLt6IuK0cVygU7WOtAVbBXgoqTE76qbAc3qmdSiSmVL53AK76
	meVEtt15lIZClulAMMqb23x0D+/bFCgmyywGjpWEyZA4q7ZRZomWxFr9BxKVQAyKGM5d6gQP
	lsFFFCbuDr/gOsrXg6DTUm3amEMwGobbtU/ZWzn8OW8wjNeQnB5efJBhzt/ORihaE+5KXfq5
	CwX9rurlIlUDT/t96VoBkYDeg36M0f7sP+7SVyPi1Qpum66h4wARAQABtC9NYWNpZWogUGlq
	YW5vd3NraSA8bWFjaWVqLnBpamFub3dza2lAM21kZWIuY29tPokCNwQTAQgAIQUCXL69HAIb
	AwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDxQB0uHMsZ70SVEACI+qknq7ZImBXu7ha3
	mQ6IJwxa9UgDwExbDGdUv6OeHAV6fGoyRsKE7mV1Q1y/coJd4vQlQBTKT7sJFlIGcSmtcjPS
	2OShHy8IiNf1Hy/7juV2Oxs3fv1f9cdLIzLe/oF2uRdKRRM2pgYiz8SeS6Q+MPUmXN1qOpmD
	glvf6ODhAiTj84RaeR5ikmW+9/Ldpt2PAUKT2PkHTQOKTkAkE9w+VTxdo+bmj//QIJtFT41f
	2A7nDESzSo38Jw91jXdNb8f7lOd+RCl1hlf09agbQnKFB1LFdbGsLvYLUjIgvMF+rOOGjeXR
	WOqo8WoowA/FfJYC9Rw+9qqAJ6TvjkxeZrhXxCxgHuA60mWxn/NofbxtZSYuHw6Abwg71Nta
	SJ07qCCaSHlwouYcGgSatg1mmqqOkOPbp0sls54Go1FR3R9yJJR5fBJEl1amiu/ytLCbdEVT
	Y8bE6bcgwBk7mWzNmdmf/EykaNIPbwnPDtLIQ+9rDX34ACIJNbxdMCjmrocKVBTJ9cSOlOuQ
	xlQrrmdFKAnz0exvvE9YACgmlZ0LjzGFwm4U9G5BdJDkAeNQfbRs4CkCPgBpInmMjoelpFTW
	dCDoGilLikNjGfgfCc8ENccw9rZndmbuWKixVMRXU3R/Fxjc0xtJvL5Iz7HLxzvtmN/OBShG
	+iFROS+HC6tAkVYC1rkCDQRcvr0cARAAuQDEynwHXPMV54ZoBfLxURH63RzhIjYlX88HnqEn
	/mNY2FIwUtKS73LLl7ljH4XLFDGZCEFgYttddc9wwJXw9pDvVxLICV3nTKNyBipShj/LOGbf
	B4Pk0qlkKx5KpqSmVFZRM7mwK88tGhAILfu9IBSk/QOS1QRFztB0L2kkU/UslyJqoMD4qJqI
	QGwPf5drfK6c685yFhdDcHcXeNgnTap68wviPLBAhRPMd8qDxMIZMARi+wxb5w6OwDxetSJn
	kNkxCtMpiXbna/hTMIvRqC9VgwBrAINzsJMk4qVqy5CYXNJ/tkHAtTIHISliRkaZYBDdXCo9
	SltNctQGIK1IaqTf8iLq4pehm252NTVw8QYw2usErsHp3fZLNTcJhpr4prq4aIP8ERzbaBb/
	02i6VXAjVS5LNrIqXvkJkOeLfLRC2Fwbj6sdK5maRBGmtkGvhXJYIUlbQchY83dbQziQoMxM
	97ZQO0l5QZRJAIjIyYXx4AaZBxoHXr9jdle54Rj/+Lru54/yDT8zWxzO+PaotQxykgEsDTXv
	T8+kfpGOfd3ojfrKhX+bTym0TT/MVMI5CYqllQ3wF9QZFchj0I//8148Fanezj8sHbGNdNi6
	4mpKGpEBpaLBwySx+o7SaxLvlD4GbqETIwoOxMcpvo7nQKpgHeOEu81+SDc+9KKSFjEAEQEA
	AYkCHwQYAQgACQUCXL69HAIbDAAKCRDxQB0uHMsZ70tNEACA0ZKeJYPUHy+95d20N/i31Oze
	BzbMksMrd/j+qPOgeTjEytxrfeOVQY/gok0sOvhDYoFvLiip0lxrIS/tHZcaH/CQn0jZkaHA
	tGWy4hrb7wKnUEpAAwepYQyxxPy/upliLwmLX7oxdvJIY0A3T/m+8gLzR+OEJB4MfGUypSzT
	N2RY2xTyvXUQYgw/iRHucduCYv0ZNHCzs2CtKeZpcuuozClAjPywwItn0o3YJDdZWShd6WmO
	cOnklq9XjwxTOYWxn2i/NGv/BY7DOALzrFbp66hjMa0Vz7lCGKvSDVDcJLBnNd4Jf69DB1Ie
	pHx5jdJHqk61DZq4yYQBh/MM4oAP7MsUE02rnp+pXqAjJUhFp6+wLP1irRL+SzdYGdda1uio
	lhfvd/icZAEuMUnnaSkA28NjoIVwI5YmdDKuqmFWCA8PSHY8k+LLxuk/AZdV862OYCb1+r7l
	sc1l7tHAPHGGjG3i7Hh89FdAMQ0vSGTkGuOZIAKF7atKf7TVc7M3PPT3RACCXx0ABRA3/FqR
	lX18nOduQOSYS5LGRg4dHv5m9kgu6asXmwDP82sg8ca1RsxXuTLCrIYpGlGkThnzgqWxlC7M
	Ridv3wyyJp8CIgdeYl4oZaSFhz12B+VaM1n8y8Nsg1e9oHHNdEWT1/S5QJRb4Ig3LQOmUhZw
	0f2bcrTp9w==
Message-ID: <d4286c14-41cc-315c-e85b-21facfbca979@3mdeb.com>
Date: Mon, 1 Jul 2019 09:42:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com>
X-Ovh-Tracer-Id: 13363305994583551657
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrvdehgdduvdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: Yocto stucks when building!
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
X-List-Received-Date: Mon, 01 Jul 2019 11:18:44 -0000
Content-Type: multipart/alternative;
	boundary="------------D3A31724BAB0353D45CDFA87"
Content-Language: en-US

--------------D3A31724BAB0353D45CDFA87
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


On 01.07.2019 09:39, Onur Eser wrote:
> Hello,
Hi
> I am trying to build a yocto for i.MX6, with a QT5 layer, everything
> is okay, but it freezes on 2666th task! When 4 tasks are running at
> the same time in normal, when it comes to 2666th, it is only one task
> and takes forever! (I made it wait for one night)
>
> Build Configuration:
> BB_VERSION        = "1.26.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-16.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
First of all, it seems you are not building for the iMX6, but for the
qemux86.
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.8.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta              = "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
> meta-qt5          = "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"
> meta-fsl-arm      = "fido:c9f259a4bf8472dfa3ff75f1c3fcbe5e0ded7aaf"
> meta-solidrun-arm-imx6 = "fido:3e496c0895b0abf8d2aaca2c622246c1f9f3ed75"
> meta-yocto        
> meta-yocto-bsp    = "fido:87631919819b6f85f23f57689cd1065c64d7fb03"
fido release is *really* old. Where did you get the documentation to
start this build from?
I think you might have difficult time getting support with such old release.
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (2666 of 5960):
> 0: attr-native-2.4.47-r0 do_compile (pid 3485)
>
> How to solve this?
> Thanks,
> Onur
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------D3A31724BAB0353D45CDFA87
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 01.07.2019 09:39, Onur Eser wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello,</div>
      </div>
    </blockquote>
    Hi<br>
    <blockquote type="cite"
cite="mid:CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com">
      <div dir="ltr">
        <div>I am trying to build a yocto for i.MX6, with a QT5 layer,
          everything is okay, but it freezes on 2666th task! When 4
          tasks are running at the same time in normal, when it comes to
          2666th, it is only one task and takes forever! (I made it wait
          for one night)<br>
        </div>
        <div><br>
        </div>
        <div>Build Configuration:<br>
          BB_VERSION        = "1.26.0"<br>
          BUILD_SYS         = "x86_64-linux"<br>
          NATIVELSBSTRING   = "Ubuntu-16.04"<br>
          TARGET_SYS        = "i586-poky-linux"<br>
          MACHINE           = "qemux86"<br>
        </div>
      </div>
    </blockquote>
    First of all, it seems you are not building for the iMX6, but for
    the qemux86.<br>
    <blockquote type="cite"
cite="mid:CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com">
      <div dir="ltr">
        <div>DISTRO            = "poky"<br>
          DISTRO_VERSION    = "1.8.2"<br>
          TUNE_FEATURES     = "m32 i586"<br>
          TARGET_FPU        = ""<br>
          meta              =
          "fido:87631919819b6f85f23f57689cd1065c64d7fb03"<br>
          meta-qt5          =
          "fido:90919b9d86988e7da01fa2c0a07246b5b5600a5d"<br>
          meta-fsl-arm      =
          "fido:c9f259a4bf8472dfa3ff75f1c3fcbe5e0ded7aaf"<br>
          meta-solidrun-arm-imx6 =
          "fido:3e496c0895b0abf8d2aaca2c622246c1f9f3ed75"<br>
          meta-yocto        <br>
          meta-yocto-bsp    =
          "fido:87631919819b6f85f23f57689cd1065c64d7fb03"<br>
        </div>
      </div>
    </blockquote>
    fido release is *really* old. Where did you get the documentation to
    start this build from?<br>
    I think you might have difficult time getting support with such old
    release.<br>
    <blockquote type="cite"
cite="mid:CAG+Ob8Z2dTj+Yx44T_cWbRELkCcapPUaY=1h51nG0HBuGN6BxQ@mail.gmail.com">
      <div dir="ltr">
        <div><br>
          NOTE: Preparing RunQueue<br>
          NOTE: Executing SetScene Tasks<br>
          NOTE: Executing RunQueue Tasks<br>
          Currently 1 running tasks (2666 of 5960):<br>
          0: attr-native-2.4.47-r0 do_compile (pid 3485)</div>
        <div><br>
        </div>
        <div>How to solve this?</div>
        <div>Thanks,</div>
        <div>Onur<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------D3A31724BAB0353D45CDFA87--
