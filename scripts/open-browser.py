import webbrowser
import sys
import time

def main():
  sites = "websites.txt"

  if len(sys.argv) >= 2:
    sites = sys.argv[1].lower()

  wbbrowser = webbrowser.get()
  with open(sites) as fobj:
    try:
      for num, url in enumerate(fobj):
        wbbrowser.open_new_tab(url.strip())
        time.sleep(1)
    except Exception as err:
      print(err)

if __name__ == '__main__': main()