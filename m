Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CB1DE008D0; Wed,  8 Mar 2017 23:59:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FF4E00726
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 23:59:54 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id v297xkqm016625
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO);
	Thu, 9 Mar 2017 09:59:46 +0200
To: Patrick Ohly <patrick.ohly@intel.com>
References: <51315601-026c-457c-a99f-4961487e12e3@vitheia.com>
	<1489044139.7785.341.camel@intel.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <d4287bea-7820-8a90-2deb-3b255a7ec34f@vitheia.com>
Date: Thu, 9 Mar 2017 09:59:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <1489044139.7785.341.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: cannot build image using sstate
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
X-List-Received-Date: Thu, 09 Mar 2017 07:59:58 -0000
Content-Type: multipart/alternative;
	boundary="------------331968CC31300B718CB9AD32"

--------------331968CC31300B718CB9AD32
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks! You are right, the do_deploy_append installs the 
image_signed.fit in the ${DEPLOY_DIR_IMAGE}(I should have kept that line 
in the previous mail also):
do_deploy_append() {
[...]
          #this line creates the image_signed.fit file
           mkimage  [...] image_signed.fit
           install -m 0644  image_signed.fit ${DEPLOY_DIR_IMAGE}/.
[...]
}

The doc mentions in regards to DEPLOYDIR:
"Recipes inheriting the |deploy| class should copy files to be deployed 
into |DEPLOYDIR|, and the class will take care of copying them into 
|DEPLOY_DIR_IMAGE| 
<http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DEPLOY_DIR_IMAGE> 
afterwards."

So I should just replace ${DEPLOY_DIR_IMAGE} with ${DEPLOYDIR} and I get 
the same behaviour as before + the benefit of sstate cache ?

Thanks


On 09/03/17 09:22, Patrick Ohly wrote:
> On Thu, 2017-03-09 at 08:54 +0200, Mircea Gliga wrote:
>> Long story short: I have problems building an image, in a clean build
>> directory, reusing the shared state cache and downloads from a previous
>> build.
>> A file created in the do_deploy_append task is not created(restored)
>> anymore when building using a previous sstate.
>>
>> And now the long description:
>> In my custom layer, in a kernel recipe, linux-stable.bb, I have appended
>> some operations to the `deploy` task, one of them is creating an U-Boot
>> FIT image:
>>
>> linux-stable.bb:
>> do_deploy_append() {
>> [...]
>>           #this line creates the image_signed.fit file
>>            mkimage  [...] image_signed.fit
>>
>> [...]
>> }
> Are you writing image_signed.fit into the ${DEPLOYDIR} or
> ${DEPLOY_DIR_IMAGE}? When writing directly into ${DEPLOY_DIR_IMAGE}, you
> bypass the mechanism which adds files to the sstate cache and then you
> get exactly the problem you describe.
>


--------------331968CC31300B718CB9AD32
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Thanks! You are right, the do_deploy_append installs the
    image_signed.fit in the ${DEPLOY_DIR_IMAGE}(I should have kept that
    line in the previous mail also):<br>
    do_deploy_append() {<br>
    [...]<br>
             #this line creates the image_signed.fit file<br>
              mkimage  [...] image_signed.fit<br>
              install -m 0644  image_signed.fit ${DEPLOY_DIR_IMAGE}/.<br>
    [...]<br>
    }<br>
    <br>
    The doc mentions in regards to DEPLOYDIR:<br>
    "Recipes inheriting the <code class="filename">deploy</code> class
    should copy files to be deployed into <code class="filename">DEPLOYDIR</code>,
    and the class will take care of copying them into <a class="link"
href="http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DEPLOY_DIR_IMAGE"
      title="DEPLOY_DIR_IMAGE"><code class="filename">DEPLOY_DIR_IMAGE</code></a>
    afterwards."<br>
    <br>
    So I should just replace ${DEPLOY_DIR_IMAGE} with ${DEPLOYDIR} and I
    get the same behaviour as before + the benefit of sstate cache ?<br>
    <br>
    Thanks<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 09/03/17 09:22, Patrick Ohly wrote:<br>
    </div>
    <blockquote cite="mid:1489044139.7785.341.camel@intel.com"
      type="cite">
      <pre wrap="">On Thu, 2017-03-09 at 08:54 +0200, Mircea Gliga wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Long story short: I have problems building an image, in a clean build 
directory, reusing the shared state cache and downloads from a previous 
build.
A file created in the do_deploy_append task is not created(restored) 
anymore when building using a previous sstate.

And now the long description:
In my custom layer, in a kernel recipe, linux-stable.bb, I have appended 
some operations to the `deploy` task, one of them is creating an U-Boot 
FIT image:

linux-stable.bb:
do_deploy_append() {
[...]
         #this line creates the image_signed.fit file
          mkimage  [...] image_signed.fit

[...]
}
</pre>
      </blockquote>
      <pre wrap="">
Are you writing image_signed.fit into the ${DEPLOYDIR} or
${DEPLOY_DIR_IMAGE}? When writing directly into ${DEPLOY_DIR_IMAGE}, you
bypass the mechanism which adds files to the sstate cache and then you
get exactly the problem you describe.

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------331968CC31300B718CB9AD32--
