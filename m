Return-Path: <prvs=946f89120=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0663DE00CF5; Wed, 25 May 2016 01:02:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1337CE00CF4
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:01:56 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CrBACcWkVX/0oKEKxbhQoGt2uEE4YHCgKCBAEBAQEBAYENhEQBAQR4ARALDQsJFg8JAwIBAgFFBg0BBQICzREBAQEBAQEBAwEBAQEjhieETIQPAXuEchwBBJg3gVaOM4dYFwyFOI9MhFFsiEk/fwEBAQ
X-IPAS-Result: A2CrBACcWkVX/0oKEKxbhQoGt2uEE4YHCgKCBAEBAQEBAYENhEQBAQR4ARALDQsJFg8JAwIBAgFFBg0BBQICzREBAQEBAQEBAwEBAQEjhieETIQPAXuEchwBBJg3gVaOM4dYFwyFOI9MhFFsiEk/fwEBAQ
To: <yocto@yoctoproject.org>
References: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <57455C1E.3040906@skidata.com>
Date: Wed, 25 May 2016 10:02:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: [psplash][PATCH] psplash: add option to read startup message from file
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
X-List-Received-Date: Wed, 25 May 2016 08:02:00 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Any comments/updates on that patch of mine?


On 04/15/2016 10:49 AM, Richard Leitner wrote:
> This patch adds an option to read the displayed message from a file.
> Additionally the maximum length for the read string can be defined.
> If both, a message (STARTUP_MSG) and a file (STARTUP_MSG_FILE) are
> defined the content of the file will be appended to the message.
> The string will be cutted after the given maximum number of chars.
> 
> For these changes the following defines were introduced:
>   PSPLASH_STARTUP_MSG_MAX_LEN ... maximum lenght of the complete message
>   PSPLASH_STARTUP_MSG_FILE ...... path to the file to read
> 
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  psplash-config.h |  5 +++++
>  psplash.c        | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/psplash-config.h b/psplash-config.h
> index 82bb76d..7fa44fa 100644
> --- a/psplash-config.h
> +++ b/psplash-config.h
> @@ -21,6 +21,11 @@
>  
>  /* Text to output on program start; if undefined, output nothing */
>  #define PSPLASH_STARTUP_MSG ""
> +#define PSPLASH_STARTUP_MSG_MAX_LEN 32
> +
> +/* File to read and display its first line on program start;
> + * if undefined, output nothing; if MSG is defined also, append to it */
> +#define PSPLASH_STARTUP_MSG_FILE ""
>  
>  /* Bool indicating if the image is fullscreen, as opposed to split screen */
>  #define PSPLASH_IMG_FULLSCREEN 0
> diff --git a/psplash.c b/psplash.c
> index 04d3d49..b7d2d28 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -208,6 +208,9 @@ main (int argc, char** argv)
>    int        pipe_fd, i = 0, angle = 0, ret = 0;
>    PSplashFB *fb;
>    bool       disable_console_switch = FALSE;
> +  char       msg[PSPLASH_STARTUP_MSG_MAX_LEN];
> +  int        msglen;
> +  FILE      *fd_msg;
>    
>    signal(SIGHUP, psplash_exit);
>    signal(SIGINT, psplash_exit);
> @@ -298,9 +301,33 @@ main (int argc, char** argv)
>  
>    psplash_draw_progress (fb, 0);
>  
> +  memset(msg, 0, PSPLASH_STARTUP_MSG_MAX_LEN);
> +  msglen = 0;
>  #ifdef PSPLASH_STARTUP_MSG
> -  psplash_draw_msg (fb, PSPLASH_STARTUP_MSG);
> +  snprintf(msg, PSPLASH_STARTUP_MSG_MAX_LEN, "%s", PSPLASH_STARTUP_MSG);
> +  msglen = strlen(msg);
>  #endif
> +#ifdef PSPLASH_STARTUP_MSG_FILE
> +  fd_msg = fopen (PSPLASH_STARTUP_MSG_FILE, "r");
> +  if (fd_msg)
> +    {
> +      if (msglen == 0)
> +        {
> +          fgets (msg, PSPLASH_STARTUP_MSG_MAX_LEN, fd_msg);
> +        }
> +      else
> +        {
> +          fgets (&msg[msglen + 1], PSPLASH_STARTUP_MSG_MAX_LEN - msglen - 1, fd_msg);
> +          msg[msglen] = ' ';
> +        }
> +      fclose (fd_msg);
> +    }
> +  msglen = strlen(msg);
> +#endif
> +
> +  /* draw message if we have one */
> +  if (msglen > 0)
> +    psplash_draw_msg (fb, msg);
>  
>    psplash_main (fb, pipe_fd, 0);
>  
> 

