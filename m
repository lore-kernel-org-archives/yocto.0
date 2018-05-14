Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D3A2E01093; Mon, 14 May 2018 01:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [64.30.133.232 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 557 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 May 2018 01:36:01 PDT
Received: from osg.samsung.com (osg.samsung.com [64.30.133.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64F7E00CD7
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 01:36:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 86E9F33342;
	Mon, 14 May 2018 01:26:43 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at dev.s-opensource.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqs2JqyrGys7; Mon, 14 May 2018 01:26:32 -0700 (PDT)
Received: from [192.168.0.103] (tou31-2-82-243-115-242.fbx.proxad.net
	[82.243.115.242])
	by osg.samsung.com (Postfix) with ESMTPSA id 6FE4E33329;
	Mon, 14 May 2018 01:26:31 -0700 (PDT)
To: Chanho Park <parkch98@gmail.com>,
	Philippe Coval <philippe.coval.pro@gmail.com>
References: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
	<952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
	<CAPTzV17QSxoOtVU3fTdVpppJcRrcACVT4uDro_rUH6PP+B34-g@mail.gmail.com>
	<CACn9BzmV3BchF-kSLNXUG8dfCywONT5mMTDk5aygncWR9VcNgQ@mail.gmail.com>
	<CAPTzV16ECPNdehXSWSme4ZPOTr3mmTM3To+Rs40oir7o6pYt9Q@mail.gmail.com>
From: Philippe Coval <philippe.coval@osg.samsung.com>
Message-ID: <c421feb2-8659-bbfd-817a-c2b94a9a6be3@osg.samsung.com>
Date: Mon, 14 May 2018 10:26:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAPTzV16ECPNdehXSWSme4ZPOTr3mmTM3To+Rs40oir7o6pYt9Q@mail.gmail.com>
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	yocto@yoctoproject.org
Subject: Re: [dev] [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Mon, 14 May 2018 08:36:03 -0000
Content-Type: multipart/alternative;
	boundary="------------817013C38ABC953EBB7F6E1E"
Content-Language: en-US

--------------817013C38ABC953EBB7F6E1E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

Thanks for feedback,

if fixed in master or 1.3-rel it should be also fixed in upcoming 1.4-rel:

https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/on/master/next

Can you confirm ?

If 1.4.0 is not released soon I'll try to patch 1.3.1 when done with my
current priorities ;)

Regards

On 14/05/18 10:17, Chanho Park wrote:
> Hi Phillippe,
>
> I’ve seen you updated the 1.3.0 and 1.3.1 branch as well.
> Unfortunately, I got stuck when I tried to build 1.3.1 branch for
> aarch as well as armhf architectures. You already fixed the issue on
> master branch and 1.3-rel branch[1] as well but they are not applied
> yet in meta-oic. I tried to fix it but it seemed to be updated install
> scripts of bb file as well. Could you update the 1.3.1 branch of
> meta-oic as well?
>
> [1]: https://jira.iotivity.org/browse/IOT-2706
>
> Best Regards,
> Chanho Park
> On Tue, 6 Mar 2018 at 1:07 AM Philippe Coval
> <philippe.coval.pro@gmail.com <mailto:philippe.coval.pro@gmail.com>>
> wrote:
>
>     On Fri, Jan 12, 2018 at 3:26 AM, Chanho Park <parkch98@gmail.com
>     <mailto:parkch98@gmail.com>> wrote:
>
>         Hi Philippe,
>
>         On Thu, 11 Jan 2018 at 7:11 PM Philippe Coval
>         <philippe.coval@osg.samsung.com
>         <mailto:philippe.coval@osg.samsung.com>> wrote:
>
>
>             On 11/01/18 02:30, Chanho Park wrote:
>             > Hi Philippe,
>             >
>
>      
>
>             Okay. I’ll test them when you resend them. Please CCing me
>             at that time.
>
>
>
>     1.3.0 is now merged in:
>
>     http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=eb7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d
>
>     I will commit more pending patches in coming days/week,
>     feedback is always welcome in iotivity tracker (add yocto label)
>
>      
>
>         Okay. I look forward to your results :)
>         Thanks.
>
>
>     Thank you for your patience, now It should me faster since I got
>     commit rights.
>
>     Regards
>      
>     -- 
>     gpg:0x467094BC
>     xmpp:philippe.coval.pro@gmail.com
>     <mailto:xmpp%3Aphilippe.coval.pro@gmail.com>
>     https://wiki.tizen.org/wiki/User:Pcoval
>


--------------817013C38ABC953EBB7F6E1E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>Thanks for feedback,</p>
    <p>if fixed in master or 1.3-rel it should be also fixed in upcoming
      1.4-rel:</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/on/master/next">https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/on/master/next</a></p>
    <p>Can you confirm ?<br>
    </p>
    If 1.4.0 is not released soon I'll try to patch 1.3.1 when done with
    my current priorities ;)<br>
    <br>
    Regards<br>
    <br>
    <div class="moz-cite-prefix">On 14/05/18 10:17, Chanho Park wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPTzV16ECPNdehXSWSme4ZPOTr3mmTM3To+Rs40oir7o6pYt9Q@mail.gmail.com">Hi
      Phillippe,<br>
      <br>
      I’ve seen you updated the 1.3.0 and 1.3.1 branch as well.
      Unfortunately, I got stuck when I tried to build 1.3.1 branch for
      aarch as well as armhf architectures. You already fixed the issue
      on master branch and 1.3-rel branch[1] as well but they are not
      applied yet in meta-oic. I tried to fix it but it seemed to be
      updated install scripts of bb file as well. Could you update the
      1.3.1 branch of meta-oic as well?<br>
      <br>
      [1]: <a href="https://jira.iotivity.org/browse/IOT-2706"
        moz-do-not-send="true">https://jira.iotivity.org/browse/IOT-2706</a><br>
      <br>
      Best Regards,<br>
      Chanho Park<br>
      <div class="gmail_quote">
        <div dir="ltr">On Tue, 6 Mar 2018 at 1:07 AM Philippe Coval &lt;<a
            href="mailto:philippe.coval.pro@gmail.com"
            moz-do-not-send="true">philippe.coval.pro@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="ltr">
            <div class="gmail_extra">
              <div class="gmail_quote">On Fri, Jan 12, 2018 at 3:26 AM,
                Chanho Park <span dir="ltr">&lt;<a
                    href="mailto:parkch98@gmail.com" target="_blank"
                    moz-do-not-send="true">parkch98@gmail.com</a>&gt;</span>
                wrote:<br>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div dir="auto">Hi Philippe,</div>
                    <br>
                    <div class="gmail_quote"><span
                        class="m_8972251626038541812gmail-">
                        <div dir="auto">On Thu, 11 Jan 2018 at 7:11 PM
                          Philippe Coval &lt;<a
                            href="mailto:philippe.coval@osg.samsung.com"
                            target="_blank" moz-do-not-send="true">philippe.coval@osg.samsung.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex"><br>
                          On 11/01/18 02:30, Chanho Park wrote:<br>
                          &gt; Hi Philippe,<br>
                          &gt;</blockquote>
                      </span></div>
                  </div>
                </blockquote>
                <div> </div>
              </div>
            </div>
          </div>
          <div dir="ltr">
            <div class="gmail_extra">
              <div class="gmail_quote">
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div class="gmail_quote"><span
                        class="m_8972251626038541812gmail-">
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">Okay. I’ll
                          test them when you resend them. Please CCing
                          me at that time.<br>
                        </blockquote>
                      </span><span class="m_8972251626038541812gmail-">
                        <div dir="auto"><br>
                        </div>
                      </span></div>
                  </div>
                </blockquote>
                <div><br>
                </div>
                <div>1.3.0 is now merged in:</div>
                <div><br>
                </div>
                <div><a
href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=eb7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d"
                    target="_blank" moz-do-not-send="true">http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/commit/README?id=eb7dfc4764ce538fc84eb40f1ca7ed7e14eb1f1d</a><br>
                </div>
                <div><br>
                </div>
                <div>I will commit more pending patches in coming
                  days/week,</div>
                <div>feedback is always welcome in iotivity tracker (add
                  yocto label)</div>
              </div>
            </div>
          </div>
          <div dir="ltr">
            <div class="gmail_extra">
              <div class="gmail_quote">
                <div><br>
                </div>
                <div> </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div class="gmail_quote">
                      <div dir="auto">Okay. I look forward to your
                        results :)</div>
                      <div dir="auto">Thanks.</div>
                      <span class="m_8972251626038541812gmail-">
                        <div dir="auto"><br>
                        </div>
                      </span></div>
                  </div>
                </blockquote>
                <div><br>
                </div>
              </div>
            </div>
          </div>
          <div dir="ltr">
            <div class="gmail_extra">
              <div class="gmail_quote">
                <div>Thank you for your patience, now It should me
                  faster since I got commit rights.</div>
                <div><br>
                </div>
                <div>Regards</div>
                <div> </div>
              </div>
            </div>
          </div>
          <div dir="ltr">
            <div class="gmail_extra">
              <div class="m_8972251626038541812gmail_signature">
                <div dir="ltr">
                  <div>
                    <div dir="ltr">
                      <div>-- </div>
                      <div><span style="font-size:12.8px">gpg:0x467094BC</span><br>
                        <span style="font-size:12.8px"><a
                            href="mailto:xmpp%3Aphilippe.coval.pro@gmail.com"
                            target="_blank" moz-do-not-send="true">xmpp:philippe.coval.pro@gmail.com</a></span><br
                          style="font-size:12.8px">
                        <a
                          href="https://wiki.tizen.org/wiki/User:Pcoval"
                          style="font-size:12.8px" target="_blank"
                          moz-do-not-send="true">https://wiki.tizen.org/wiki/User:Pcoval</a><br>
                      </div>
                      <div><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------817013C38ABC953EBB7F6E1E--
