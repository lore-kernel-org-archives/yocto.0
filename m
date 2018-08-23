Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D08C4E00655; Wed, 22 Aug 2018 18:49:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5042CE00529
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 18:49:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7N1noFs005097
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Aug 2018 18:49:50 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 22 Aug 2018 18:49:49 -0700
To: Paul Sheer <paulsheer@gmail.com>
References: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
	<dd057e86-090f-3070-630f-5afaca94475a@windriver.com>
	<CABxOuY8uMGiOh-9_SE3n0SNui-kidXU2VT8stezt5F4C1TztXw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <9c07a8b1-bb80-1641-0f4d-a7ca1f39cd6d@windriver.com>
Date: Thu, 23 Aug 2018 09:54:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CABxOuY8uMGiOh-9_SE3n0SNui-kidXU2VT8stezt5F4C1TztXw@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Cc: yocto@yoctoproject.org
Subject: Re: Cleaning out build without re-downloading sources
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
X-List-Received-Date: Thu, 23 Aug 2018 01:49:56 -0000
Content-Type: multipart/alternative;
	boundary="------------32A75A1065B992D38F84533D"

--------------32A75A1065B992D38F84533D
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/22/2018 11:28 PM, Paul Sheer wrote:
>
>
>
>     There is a separate directory, which is usually downloads/ under
>     the build directory, to keep downloaded git repos and tarballs.
>
>     [network]  ---> [downloads] ---> [tmp/work/xxxx]
>
>     So you don't have to worry about the downloading when you clean up
>     tmp/.
>
>     Best Regards,
>     Chen Qi
>
>
>
> Thanks.
>
> So, if my directories look as below, which should get a rm -rf  ?
>

The tmp/ directory.

Best Regards,
Chen Qi

> paul@pauls-machine:~/my-yocto$ ls -la
> total 72
> drwxrwxr-x  8 paul paul  4096 Aug 21 17:33 .
> drwxrwxr-x 15 paul paul  4096 Aug 21 16:55 ..
> -rw-rw-r--  1 paul paul     0 Aug 21 16:57 bitbake.lock
> drwxrwxr-x  2 paul paul  4096 Aug 22 10:14 cache
> drwxrwxr-x  2 paul paul  4096 Aug 21 16:57 conf
> drwxrwxr-x  7 paul paul 36864 Aug 22 10:23 downloads
> drwxrwxr-x 71 paul paul  4096 Aug 22 10:23 sstate-cache
> drwxrwxr-x 11 paul paul  4096 Aug 21 17:57 tmp
>
> Paul
>
>


--------------32A75A1065B992D38F84533D
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/22/2018 11:28 PM, Paul Sheer
      wrote:<br>
    </div>
    <blockquote
cite="mid:CABxOuY8uMGiOh-9_SE3n0SNui-kidXU2VT8stezt5F4C1TztXw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex"><br>
              </blockquote>
              <br>
              There is a separate directory, which is usually downloads/
              under the build directory, to keep downloaded git repos
              and tarballs.<br>
              <br>
              [network]  ---&gt; [downloads] ---&gt; [tmp/work/xxxx]<br>
              <br>
              So you don't have to worry about the downloading when you
              clean up tmp/.<br>
              <br>
              Best Regards,<br>
              Chen Qi<br>
              <br>
            </blockquote>
          </div>
          <br>
        </div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Thanks.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">So, if my directories look as below,
          which should get a rm -rf  ?</div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    <br>
    The tmp/ directory.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:CABxOuY8uMGiOh-9_SE3n0SNui-kidXU2VT8stezt5F4C1TztXw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_extra">paul@pauls-machine:~/my-yocto$ ls -la</div>
          <div class="gmail_extra">total 72</div>
          <div class="gmail_extra">drwxrwxr-x  8 paul paul  4096 Aug 21
            17:33 .</div>
          <div class="gmail_extra">drwxrwxr-x 15 paul paul  4096 Aug 21
            16:55 ..</div>
          <div class="gmail_extra">-rw-rw-r--  1 paul paul     0 Aug 21
            16:57 bitbake.lock</div>
          <div class="gmail_extra">drwxrwxr-x  2 paul paul  4096 Aug 22
            10:14 cache</div>
          <div class="gmail_extra">drwxrwxr-x  2 paul paul  4096 Aug 21
            16:57 conf</div>
          <div class="gmail_extra">drwxrwxr-x  7 paul paul 36864 Aug 22
            10:23 downloads</div>
          <div class="gmail_extra">drwxrwxr-x 71 paul paul  4096 Aug 22
            10:23 sstate-cache</div>
          <div class="gmail_extra">drwxrwxr-x 11 paul paul  4096 Aug 21
            17:57 tmp</div>
          <div><br>
          </div>
        </div>
        <div class="gmail_extra">Paul</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------32A75A1065B992D38F84533D--
