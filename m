Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2804E00546; Fri, 17 Mar 2017 06:26:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 563DDE0050B
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 06:26:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 17 Mar 2017 06:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,176,1486454400"; 
	d="scan'208,217";a="1109544202"
Received: from jgperezc-mobl1.zpn.intel.com (HELO [10.219.4.33])
	([10.219.4.33])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2017 06:26:27 -0700
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
References: <20170316153425.19041-1-jose.perez.carranza@linux.intel.com>
	<CAHiDW_GFPTZsfjbRpdP+vDaiE-OEVwD+1xZagL1q-z7pR3NrcQ@mail.gmail.com>
From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
Message-ID: <5e7142bc-3d67-1510-892d-3a44b0b641bd@linux.intel.com>
Date: Fri, 17 Mar 2017 08:27:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAHiDW_GFPTZsfjbRpdP+vDaiE-OEVwD+1xZagL1q-z7pR3NrcQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [qa-tools][PATCH] full-test-cycle-wrapper: Correct qemu-auto variables
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
X-List-Received-Date: Fri, 17 Mar 2017 13:26:31 -0000
Content-Type: multipart/alternative;
	boundary="------------532D99D318076AEAF86667EC"

--------------532D99D318076AEAF86667EC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 03/17/2017 03:47 AM, Jussi Kukkonen wrote:
>
>
> On 16 March 2017 at 17:34, <jose.perez.carranza@linux.intel.com 
> <mailto:jose.perez.carranza@linux.intel.com>> wrote:
> >
> > From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com 
> <mailto:jose.perez.carranza@linux.intel.com>>
> >
> > Update variables for creating test runs for qemu ato component
> >
> > Signed-off-by: Jose Perez Carranza 
> <jose.perez.carranza@linux.intel.com 
> <mailto:jose.perez.carranza@linux.intel.com>>
> > ---
> >  scripts/full-test-cycle-wrapper.sh | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/scripts/full-test-cycle-wrapper.sh 
> b/scripts/full-test-cycle-wrapper.sh
> > index f52cd96..3a6ba0f 100755
> > --- a/scripts/full-test-cycle-wrapper.sh
> > +++ b/scripts/full-test-cycle-wrapper.sh
> > @@ -82,8 +82,8 @@ create_yocto(){
> >     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
> >
> >     #QEMUs Autos
> > -   EVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" 
> "qemumips64" "qemuppc" "qemux86-64" "qemux86-lsb" "qemux86_64-lsb")
> > -   ECUTION_TYPE="AUTO"
> > +   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" 
> "qemumips64" "qemuppc" "qemux86-64")
>
> It seems this is in master already so I'll just mention the typo for 
> future: ENVIRONMETS should probably be ENVIRONMENTS in whole file.
I'll correct that in the next series of patches. thanks for pointing it 
out.

José
>
>   Jussi
>
> > +   EXECUTION_TYPE="AUTO"
> >     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
> >
> >     #QEMUs Autos LSB
> > --
> > 2.11.0
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto

-- 
Saludos
José


--------------532D99D318076AEAF86667EC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/17/2017 03:47 AM, Jussi Kukkonen
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAHiDW_GFPTZsfjbRpdP+vDaiE-OEVwD+1xZagL1q-z7pR3NrcQ@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <br>
        On 16 March 2017 at 17:34, &lt;<a moz-do-not-send="true"
          href="mailto:jose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.intel.com</a>&gt;
        wrote:<br>
        &gt;<br>
        &gt; From: Jose Perez Carranza &lt;<a moz-do-not-send="true"
          href="mailto:jose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.intel.com</a>&gt;<br>
        &gt;<br>
        &gt; Update variables for creating test runs for qemu ato
        component<br>
        &gt;<br>
        &gt; Signed-off-by: Jose Perez Carranza &lt;<a
          moz-do-not-send="true"
          href="mailto:jose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.intel.com</a>&gt;<br>
        &gt; ---<br>
        &gt;  scripts/full-test-cycle-wrapper.sh | 4 ++--<br>
        &gt;  1 file changed, 2 insertions(+), 2 deletions(-)<br>
        &gt;<br>
        &gt; diff --git a/scripts/full-test-cycle-wrapper.sh
        b/scripts/full-test-cycle-wrapper.sh<br>
        &gt; index f52cd96..3a6ba0f 100755<br>
        &gt; --- a/scripts/full-test-cycle-wrapper.sh<br>
        &gt; +++ b/scripts/full-test-cycle-wrapper.sh<br>
        &gt; @@ -82,8 +82,8 @@ create_yocto(){<br>
        &gt;     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"<br>
        &gt;<br>
        &gt;     #QEMUs Autos<br>
        &gt; -   EVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips"
        "qemumips64" "qemuppc" "qemux86-64" "qemux86-lsb"
        "qemux86_64-lsb")<br>
        &gt; -   ECUTION_TYPE="AUTO"<br>
        &gt; +   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64"
        "qemumips" "qemumips64" "qemuppc" "qemux86-64")
        <div><br>
        </div>
        <div>It seems this is in master already so I'll just mention the
          typo for future: ENVIRONMETS should probably be ENVIRONMENTS
          in whole file. <br>
        </div>
      </div>
    </blockquote>
    I'll correct that in the next series of patches. thanks for pointing
    it out. <br>
    <br>
    José<br>
    <blockquote
cite="mid:CAHiDW_GFPTZsfjbRpdP+vDaiE-OEVwD+1xZagL1q-z7pR3NrcQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>  Jussi<br>
        </div>
        <div><br>
          &gt; +   EXECUTION_TYPE="AUTO"<br>
          &gt;     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"<br>
          &gt;<br>
          &gt;     #QEMUs Autos LSB<br>
          &gt; --<br>
          &gt; 2.11.0<br>
          &gt;<br>
          &gt; --<br>
          &gt; _______________________________________________<br>
          &gt; yocto mailing list<br>
          &gt; <a moz-do-not-send="true"
            href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
          &gt; <a moz-do-not-send="true"
            href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Saludos 
José </pre>
  </body>
</html>

--------------532D99D318076AEAF86667EC--
