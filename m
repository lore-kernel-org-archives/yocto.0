Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4148EE00D15; Fri, 22 Mar 2019 14:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [31.170.123.134 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 17332 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Mar 2019 14:45:04 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [31.170.123.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69899E00C1B
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 14:45:04 -0700 (PDT)
Received: from [192.168.1.14] (c-73-196-216-147.hsd1.nj.comcast.net
	[73.196.216.147])
	by smtp.webfaction.com (Postfix) with ESMTPSA id 3A0ED605829D7;
	Fri, 22 Mar 2019 21:44:41 +0000 (UTC)
To: Dimitris Tassopoulos <dimtass@gmail.com>
References: <b6e5f140-38c9-07e1-a136-76b5f42f411c@mindchasers.com>
	<CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com>
From: Bob Cochran <yocto@mindchasers.com>
Message-ID: <3c0642e2-9be5-01ab-7973-1508359240ff@mindchasers.com>
Date: Fri, 22 Mar 2019 17:45:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Seeking recommendation for low cost dev board with Gigabit Ethernet that as a Yocto BSP
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
X-List-Received-Date: Fri, 22 Mar 2019 21:45:06 -0000
Content-Type: multipart/alternative;
	boundary="------------6FD041451DEC4B4D3AAEE203"
Content-Language: en-US

--------------6FD041451DEC4B4D3AAEE203
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/22/19 5:13 PM, Dimitris Tassopoulos wrote:
> Hi Bob,
>
> for low cost BSPs you can have a look at some allwinner boards from 
> FriendlyElec and OrangePi.


That's excellent.  Thank you.  Do any of these boards have accessible 
JTAG for debugging the kernel?  Is this something you have done in 
supporting the BSPs?    I see a UART port is listed as a debug port.  Is 
the idea to use KGDB via this port?

Bob


>
> I've created meta layer to support most of the H2, H3 and H5 arm cores 
> here:
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/
>
> So you can grab any of those boards that has a GbE. Now, regarding the 
> need of binary firmwares
> for the NICs I can't tell you which of the boards the do fill your 
> needs, but I guess you can have
> a look.
>
> Some boards the support GbE are:
> FriendlyElec:
> - NanoPi-Neo2 ~20USD 
> (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2)
> - NanoPi-K1 Plus ~35USD 
> (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus)
> - NanoPi Neo Plus2 ~35USD 
> (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2)
>
> OrangePi:
> - Orange Pi Zero Plus ~15EUR 
> (https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_32828347476.html)
> - Orange Pi PC2 ~20USD 
> (https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html)
> - Orange Pi Zero Plus2 ~24USD 
> (https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_32801249806.html)
> - Orange Pi Prime ~41USD 
> (https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Board-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_32803048527.html)
>
> Soon (probably this weekend), I'll release a new meta layer that 
> supports the NanoPi-Neo4 board,
> which has an RK3399 + GbE. If you're interested I'll send you the link 
> for the repo. That costs ~50USD
> (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4)
>
> Now, regarding the H2, H3 and H5 I do also support RT kernels for the 
> 4.14 and the 4.19.
> So these are your options:
> - 4.14.78 SMP
> - 4.19.21 SMP
> - 4.14.78 PREEMPT-RT
> - 4.19.15 PREEMPT-RT
>
> I do updates from time to time on the layer, but not that often.
>
> Hope that helps a bit.
>
> Dimitris
>
>
> Bob Cochran <yocto@mindchasers.com <mailto:yocto@mindchasers.com>> 
> schrieb am Fr., 22. März 2019, 18:12:
>
>     Hello All,
>
>     Can anyone recommend a ~$50 dev board that runs Yocto and has a
>     single
>     Gigabit Ethernet port?
>
>     The boards we are aware of either have 100Mbit Ethernet, don't
>     meet the
>     price target, or has a Gigabit Ethernet port that has reduced
>     capabilities via firmware (Ethernet driver isn't open source).
>
>     Thank you,
>
>     Bob
>
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>


--------------6FD041451DEC4B4D3AAEE203
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 3/22/19 5:13 PM, Dimitris
      Tassopoulos wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div dir="ltr">
                        <div dir="ltr">
                          <div dir="ltr">
                            <div dir="ltr">
                              <div dir="auto">Hi Bob,
                                <div dir="auto"><br>
                                </div>
                                <div dir="auto">for low cost BSPs you
                                  can have a look at some allwinner
                                  boards from FriendlyElec and OrangePi.</div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>That's excellent.  Thank you.  Do any of these boards have
      accessible JTAG for debugging the kernel?  Is this something you
      have done in supporting the BSPs?    I see a UART port is listed
      as a debug port.  Is the idea to use KGDB via this port?    <br>
    </p>
    <p>Bob<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div dir="ltr">
                        <div dir="ltr">
                          <div dir="ltr">
                            <div dir="ltr">
                              <div dir="auto">
                                <div dir="auto"><br>
                                </div>
                                <div>I've created meta layer to support
                                  most of the H2, H3 and H5 arm cores
                                  here:</div>
                                <div><a
href="https://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/"
                                    moz-do-not-send="true">https://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/</a><br>
                                </div>
                                <div><br>
                                </div>
                                <div>So you can grab any of those boards
                                  that has a GbE. Now, regarding the
                                  need of binary firmwares</div>
                                <div>for the NICs I can't tell you which
                                  of the boards the do fill your needs,
                                  but I guess you can have</div>
                                <div>a look.</div>
                                <div><br>
                                </div>
                                <div>Some boards the support GbE are:</div>
                                <div>FriendlyElec:</div>
                                <div>- NanoPi-Neo2 ~20USD (<a
                                    href="http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2"
                                    moz-do-not-send="true">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2</a>)</div>
                                <div>- NanoPi-K1 Plus ~35USD (<a
                                    href="http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus"
                                    moz-do-not-send="true">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus</a>)</div>
                                <div>- NanoPi Neo Plus2 ~35USD (<a
                                    href="http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2"
                                    moz-do-not-send="true">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2</a>)</div>
                                <div><br>
                                </div>
                                <div>OrangePi:</div>
                                <div>- Orange Pi Zero Plus ~15EUR (<a
href="https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_32828347476.html"
                                    moz-do-not-send="true">https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_32828347476.html</a>)</div>
                                <div>- Orange Pi PC2 ~20USD (<a
href="https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html"
                                    moz-do-not-send="true">https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html</a>)</div>
                                <div>- Orange Pi Zero Plus2 ~24USD (<a
href="https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_32801249806.html"
                                    moz-do-not-send="true">https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_32801249806.html</a>)</div>
                                <div>- Orange Pi Prime ~41USD (<a
href="https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Board-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_32803048527.html"
                                    moz-do-not-send="true">https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Board-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_32803048527.html</a>)</div>
                                <div><br>
                                </div>
                                <div>Soon (probably this weekend), I'll
                                  release a new meta layer that supports
                                  the NanoPi-Neo4 board,<br>
                                  which has an RK3399 + GbE. If you're
                                  interested I'll send you the link for
                                  the repo. That costs ~50USD</div>
                                <div>(<a
                                    href="http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4"
                                    moz-do-not-send="true">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4</a>)</div>
                                <div><br>
                                </div>
                                <div>Now, regarding the H2, H3 and H5 I
                                  do also support RT kernels for the
                                  4.14 and the 4.19.<br>
                                  So these are your options:</div>
                                <div>- 4.14.78 SMP</div>
                                <div>- 4.19.21 SMP</div>
                                <div>- 4.14.78 PREEMPT-RT</div>
                                <div>- 4.19.15 PREEMPT-RT</div>
                                <div><br>
                                </div>
                                <div>I do updates from time to time on
                                  the layer, but not that often.</div>
                                <div><br>
                                </div>
                                <div>Hope that helps a bit.</div>
                                <div><br>
                                  Dimitris</div>
                                <div><br>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Bob Cochran &lt;<a
            href="mailto:yocto@mindchasers.com" target="_blank"
            moz-do-not-send="true">yocto@mindchasers.com</a>&gt; schrieb
          am Fr., 22. März 2019, 18:12:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello
          All,<br>
          <br>
          Can anyone recommend a ~$50 dev board that runs Yocto and has
          a single <br>
          Gigabit Ethernet port?<br>
          <br>
          The boards we are aware of either have 100Mbit Ethernet, don't
          meet the <br>
          price target, or has a Gigabit Ethernet port that has reduced
          <br>
          capabilities via firmware (Ethernet driver isn't open source).<br>
          <br>
          Thank you,<br>
          <br>
          Bob<br>
          <br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href="mailto:yocto@yoctoproject.org" rel="noreferrer"
            target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer noreferrer" target="_blank"
            moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------6FD041451DEC4B4D3AAEE203--
