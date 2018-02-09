Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CE1DE00DE3; Fri,  9 Feb 2018 04:35:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95668E00D5F
	for <yocto@yoctoproject.org>; Fri,  9 Feb 2018 04:35:37 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w19CZYDN017327
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Fri, 9 Feb 2018 14:35:35 +0200
To: yocto@yoctoproject.org
References: <cfe8feff-815d-cf8c-3b7e-0a88f4a215c2@vitheia.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <bbe31259-5819-7457-da4e-bb7f33f22423@vitheia.com>
Date: Fri, 9 Feb 2018 14:35:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <cfe8feff-815d-cf8c-3b7e-0a88f4a215c2@vitheia.com>
Subject: Re: meta-ide-support toolchain & Recipe-specific Sysroots
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
X-List-Received-Date: Fri, 09 Feb 2018 12:35:40 -0000
Content-Type: multipart/alternative;
	boundary="------------22DCA83A717FCA30858B0B7C"
Content-Language: en-US

--------------22DCA83A717FCA30858B0B7C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

I ended up not to use meta-ide-support, but instead I've added the 
support of generating the toolchain to my own recipe (my component): 
that is my final intention, to be able to also build my component 
outside Yocto.
So when I do a `bitbake my-component` beside building the component, the 
toolchain necessary to build the component outside Yocto is also generated.

In my recipe I've added some of the code from the meta-ide-support:

     inherit toolchain-scripts

     do_populate_ide_support () {
       toolchain_create_tree_env_script
     }
     addtask populate_ide_support before do_build after do_install

And now when I build my recipe I also get a environment-setup script in 
the build/tmp/ directory - same location as the meta-ide-toolchain used 
before.
Now everything is setup correctly:
OECORE_NATIVE_SYSROOT is set to 
[...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0/recipe-sysroot-native 

Also all the dependencies are there.

Cheers.


On 01/02/18 13:39, Mircea Gliga wrote:
> I have a problem starting from the rocko upgrade and related to the 
> Recipe-specific Sysroots introduced in Yocto 2.3
>
> Our project uses cmake. So out recipe has:
> DEPENDS = "cmake-native [...]"
>
> So cmake ends up in 
> build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0-r0/recipe-sysroot-native/usr/bin/cmake
> So when building inside yocto everything is ok.
>
> When we build outside yocto, we use the cross-toolchain generated and 
> populated within the Build Directory:
>   $ bitbake meta-ide-toolchain
> and then source the environment:
>   $ source build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi
>
> On rocko OECORE_NATIVE_SYSROOT is set to 
> [...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native 
> - which doesn't have cmake:
>   $ which cmake
>   $ /no cmake found/
>
> And on Krogoth it was build/tmp/sysroots/x86_64-linux - cmake is there:
>   $ which cmake
>   <full path>/build/tmp/sysroots/x86_64-linux/usr/bin/cmake
>
>
> How can I add it to my toolchain so that I can also build outside yocto ?
>
> Thanks in advance !
>
> Regards
>
>
>


--------------22DCA83A717FCA30858B0B7C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    I ended up not to use meta-ide-support, but instead I've added the
    support of generating the toolchain to my own recipe (my component):
    that is my final intention, to be able to also build my component
    outside Yocto.<br>
    So when I do a `bitbake my-component` beside building the component,
    the toolchain necessary to build the component outside Yocto is also
    generated.<br>
    <br>
    In my recipe I've added some of the code from the meta-ide-support:<br>
    <br>
        inherit toolchain-scripts<br>
    <br>
        do_populate_ide_support () {<br>
          toolchain_create_tree_env_script<br>
        }<br>
        addtask populate_ide_support before do_build after do_install<br>
    <br>
    And now when I build my recipe I also get a environment-setup script
    in the build/tmp/ directory - same location as the
    meta-ide-toolchain used before.<br>
    Now everything is setup correctly:<br>
    OECORE_NATIVE_SYSROOT is set to
[...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0/recipe-sysroot-native
    <br>
    Also all the dependencies are there.<br>
    <br>
    Cheers.<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 01/02/18 13:39, Mircea Gliga wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:cfe8feff-815d-cf8c-3b7e-0a88f4a215c2@vitheia.com">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      I have a problem starting from the rocko upgrade and related to
      the Recipe-specific Sysroots introduced in Yocto 2.3<br>
      <br>
      Our project uses cmake. So out recipe has:<br>
      DEPENDS = "cmake-native [...]"<br>
      <br>
      So cmake ends up in
build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0-r0/recipe-sysroot-native/usr/bin/cmake<br>
      So when building inside yocto everything is ok.<br>
      <br>
      When we build outside yocto, we use the cross-toolchain generated
      and populated within the Build Directory: <br>
        $ bitbake meta-ide-toolchain<br>
      and then source the environment:<br>
        $ source
      build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi<br>
      <br>
      On rocko OECORE_NATIVE_SYSROOT is set to
[...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native
      - which doesn't have cmake:<br>
        $ which cmake<br>
        $ <i>no cmake found</i><br>
      <br>
      And on Krogoth it was build/tmp/sysroots/x86_64-linux - cmake is
      there:<br>
        $ which cmake<br>
        &lt;full path&gt;/build/tmp/sysroots/x86_64-linux/usr/bin/cmake<br>
      <br>
      <br>
      How can I add it to my toolchain so that I can also build outside
      yocto ? <br>
      <br>
      Thanks in advance !<br>
      <br>
      Regards<br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------22DCA83A717FCA30858B0B7C--
